export default function handler(req, res) {
    // get the tokenId from the query params
    const tokenId = req.query.tokenId;
    // As all the images are uploaded on github, we can extract the images from github directly.
    const image_url =
      "https://i.ytimg.com/vi/2tynWkKEG1Q/maxresdefault.jpg";
    // The api is sending back metadata for a Crypto Dev
    // To make our collection compatible with Opensea, we need to follow some Metadata standards
    // when sending back the response from the api
    // More info can be found here: https://docs.opensea.io/docs/metadata-standards
    res.status(200).json({
      name: "Bhussi NFT #" + tokenId,
      description: "Bhussi NFT is a collection of Seedhe maut stans",
      image: image_url + tokenId + ".jpg",
    });
  }