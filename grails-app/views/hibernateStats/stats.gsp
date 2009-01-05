<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Hibernate Statistics</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="delete" action="clear">Clear Stats</g:link></span>
            <g:if test="${statistics.statisticsEnabled}">
				<span class="menuButton"><g:link class="delete" action="turnOff">Turn Stats Collection Off</g:link></span>
			</g:if> 
			<g:else>
				<span class="menuButton"><g:link class="create" action="turnOn">Turn Stats Collection On</g:link></span>
			</g:else>
        </div>
        <div class="body">
			<g:if test="${!statistics.statisticsEnabled}">
				<div class="errors">
					<ul>
						<li>Note:  Hibernate Statistics are currently disabled.  You can <g:link class="add" action="turnOn">turn on</g:link> stats collection</li>
			            </li>
					</ul>
	            </div>	            
			</g:if>
            <g:if test="${flash.message}">
            	<div class="message">${flash.message}</div>
            </g:if>

            <h1>Current Hibernate Statistics (${new Date(statistics.startTime)})</h1>
            <div class="dialog">
                <table>
                    <tbody>
						<tr class="prop">
							<td valign="top" class="name">Sessions Opened:</td>
							<td valign="top" class="value">${statistics.sessionOpenCount}</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name">Sessions Closed:</td>
							<td valign="top" class="value">${statistics.sessionCloseCount}</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name">Transactions:</td>
							<td valign="top" class="value">${statistics.transactionCount}</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name">Successful Transactions:</td>
							<td valign="top" class="value">${statistics.successfulTransactionCount}</td>
						</tr>

						<tr class="prop">
							<td valign="top" class="name">Optimistic Lock Failures:</td>
							<td valign="top" class="value">${statistics.optimisticFailureCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Flushes:</td>
						    <td valign="top" class="value">${statistics.flushCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Connections Obtained:</td>
						    <td valign="top" class="value">${statistics.connectCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Statements Prepared:</td>
						    <td valign="top" class="value">${statistics.prepareStatementCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Statements Closed:</td>
						    <td valign="top" class="value">${statistics.closeStatementCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Second Level Cache Puts:</td>
						    <td valign="top" class="value">${statistics.secondLevelCachePutCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Second Level Cache Hits:</td>
						    <td valign="top" class="value">${statistics.secondLevelCacheHitCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Second Level Cache Misses:</td>
						    <td valign="top" class="value">${statistics.secondLevelCacheMissCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Entities Loaded:</td>
						    <td valign="top" class="value">${statistics.entityLoadCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Entities Updated:</td>
						    <td valign="top" class="value">${statistics.entityUpdateCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Entities Inserted:</td>
						    <td valign="top" class="value">${statistics.entityInsertCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Entities Deleted:</td>
						    <td valign="top" class="value">${statistics.entityDeleteCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Entities Fetched:</td>
						    <td valign="top" class="value">${statistics.entityFetchCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Collections Loaded:</td>
						    <td valign="top" class="value">${statistics.collectionLoadCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Collections Updated:</td>
						    <td valign="top" class="value">${statistics.collectionUpdateCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Collections Removed:</td>
						    <td valign="top" class="value">${statistics.collectionRemoveCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Collections Recreated:</td>
						    <td valign="top" class="value">${statistics.collectionRecreateCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Collections Fetched:</td>
						    <td valign="top" class="value">${statistics.collectionFetchCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Queries Executed to Database:</td>
						    <td valign="top" class="value">${statistics.queryExecutionCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Query Cache Puts:</td>
						    <td valign="top" class="value">${statistics.queryCachePutCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Query Cache Hits:</td>
						    <td valign="top" class="value">${statistics.queryCacheHitCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Query Cache Misses:</td>
						    <td valign="top" class="value">${statistics.queryCacheMissCount}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Max Query Time:</td>
						    <td valign="top" class="value">${statistics.queryExecutionMaxTime}</td>
						</tr>

						<tr class="prop">
						    <td valign="top" class="name">Max Query Time Query:</td>
						    <td valign="top" class="value">${statistics.queryExecutionMaxTimeQueryString}</td>
						</tr>

                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
