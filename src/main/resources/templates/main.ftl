<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <form action="logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign Out"/>
    </form>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter message...">
        <input type="text" name="tag" placeholder="Enter tag...">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Add</button>
    </form>
</div>
<hr>
<div>
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="Enter a tag to search for messages...">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Find</button>
    </form>
</div>
<hr>
<div>List messages</div>
<hr>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
</#list>
</body>
</html>