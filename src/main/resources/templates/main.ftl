<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout/>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter message...">
        <input type="text" name="tag" placeholder="Enter tag...">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form method="get" action="main">
        <input type="text" name="filter" value="${filter!}"
               placeholder="Enter a tag to search for messages...">
        <button type="submit">Find</button>
    </form>
</div>
<div>List messages</div>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <#else >
    No messages
    </#list>
</@c.page>