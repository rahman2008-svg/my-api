const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

// ডিফল্ট রুট
app.get('/', (req, res) => {
    res.send({ status: "OK", message: "Your API is running!" });
});

// উদাহরণ: একটা ফাংশন API
app.post('/sum', (req, res) => {
    const { a, b } = req.body;
    if (a !== undefined && b !== undefined) {
        res.send({ result: a + b });
    } else {
        res.status(400).send({ error: "Provide a and b" });
    }
});

app.listen(PORT, () => {
    console.log(`API running on port ${PORT}`);
});
