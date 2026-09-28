const express = require("express");
const orderRoutes = require("./routes/orderRoutes");

const app = express();
//*** Middleware */
app.use(express.json());

app.use("/api/orders", orderRoutes);


app.listen(3000, function () {
  console.log("Listening on port 3000..");
});