const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000; // Render নিজেই PORT দেয়

app.use(express.json());

// ডিফল্ট রুট
app.get('/', (req, res) => res.send({ status: "OK", message: "API is running!" }));

// যোগফল
app.post('/sum', (req, res) => {
    const { a, b } = req.body;
    if(a !== undefined && b !== undefined) res.send({ result: a + b });
    else res.status(400).send({ error: "Send a and b" });
});

// গুণফল
app.post('/multiply', (req, res) => {
    const { a, b } = req.body;
    if(a !== undefined && b !== undefined) res.send({ result: a * b });
    else res.status(400).send({ error: "Send a and b" });
});

// Echo
app.post('/echo', (req, res) => res.send({ you_sent: req.body }));

// Random Number
app.get('/random', (req, res) => res.send({ random: Math.floor(Math.random() * 100) + 1 }));

app.listen(PORT, () => console.log(`API running on port ${PORT}`));
