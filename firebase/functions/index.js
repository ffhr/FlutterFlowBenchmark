const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

const Mux = require("@mux/mux-node");

const kTokenId = "69368ae1-0dc9-4eb5-8a73-af934040078a";
const kTokenSecret =
  "w2oIBjJq9cHvTs68PnLwye8hLJz+5YTG9q4rNSt9BRauTU8xAqFuCxn4Pkban8Dpt264vrXPN8T";

const { Video } = new Mux(kTokenId, kTokenSecret);

exports.createLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const response = await Video.LiveStreams.create({
      latency_mode: data.latency_mode || "standard",
      playback_policy: "public",
      new_asset_settings: { playback_policy: "public" },
    });
    return response;
  } catch (err) {
    console.error(
      `Unable to start the live stream ${context.auth.uid}. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create live stream",
    );
  }
});

exports.retrieveLiveStreams = functions.https.onCall(async (data, context) => {
  try {
    const liveStreams = await Video.LiveStreams.list();
    const responseList = liveStreams.map((liveStream) => ({
      id: liveStream.id,
      status: liveStream.status,
      playback_ids: liveStream.playback_ids,
      created_at: liveStream.created_at,
    }));
    return responseList;
  } catch (err) {
    console.error(
      `Unable to retrieve live streams. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not retrieve live streams",
    );
  }
});

exports.retrieveLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const liveStreamId = data.liveStreamId;
    const liveStream = await Video.LiveStreams.get(liveStreamId);
    return liveStream;
  } catch (err) {
    console.error(
      `Unable to retrieve live stream, id: ${data.liveStreamId}. 
          Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not retrieve live stream",
    );
  }
});

exports.deleteLiveStream = functions.https.onCall(async (data, context) => {
  try {
    const liveStreamId = data.liveStreamId;
    const response = await Video.LiveStreams.del(liveStreamId);
    return response;
  } catch (err) {
    console.error(
      `Unable to delete live stream, id: ${data.liveStreamId}. 
        Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not delete live stream",
    );
  }
});
