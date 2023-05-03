<!DOCTYPE html>
<html>
<head>
	<title>Expense Manager</title>
</head>
<body>
	<h1>Expense Manager</h1>

	<p>The current date and time is: <%= new java.util.Date() %></p>

	<form action="processForm.jsp" method="post">
		<label for="category">Category:</label>
        <select id="category" name="category" required>
            <option value="">Select a category</option>
            <option value="Transportation">Transportation</option>
            <option value="Food">Food</option>
            <option value="Fees">Fees</option>
            <option value="Bills">Bills</option>
            <option value="Entertainment">Entertainment</option>
        </select>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description"></textarea>

        <label for="amount">Amount:</label>
        <input type="number" step="0.01" id="amount" name="amount" required>
        <button type="submit">Submit</button>
	</form>
	<a href="view.jsp" type="button">Show</a>
    <a href="index.jsp" type="button">Add</a>

</body>
</html>