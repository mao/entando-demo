<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpcs" uri="/WEB-INF/plugins/jpfrontshortcut/aps/tld/jpfrontshortcut-aps-core.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:headInfo type="CSS" info="../../plugins/jpfrontshortcut/static/css/jpfrontshortcut-editcontent.css" />
<wp:headInfo type="CSS" info="../../plugins/jpfrontshortcut/static/css/jpfrontshortcut-frameconfig.css" />
<wp:headInfo type="JS" info="../../plugins/jpfrontshortcut/static/js/ckeditor/ckeditor.js" />
<wpcs:staticInternalServlet actionPath="/ExtStr2/do/jpfrontshortcut/introHeader" />

<wp:info key="systemParam" paramName="jpfrontshortcut_activeFrameFrontEndEditing" var="frontEditingActiveVar" /> 

<c:if test="${frontEditingActiveVar == 'true'}" >

<wp:currentPage param="owner" var="ownerGroupVar" />
<wp:ifauthorized permission="managePages" groupName="${ownerGroupVar}">
<wp:info key="currentLang" var="currentLang" />
<wp:currentPage param="code" var="currentPageCode" />
<wpcs:requestContextParam param="currentFrame" var="framePosVar" />

[<c:out value="${framePosVar}" />
	<!-- EDIT FRAME -->
	<a id="options_anchor_EDIT_FRAME_<c:out value="${framePosVar}" />" href="javascript:void(0)" title="Edit frame <c:out value="${framePosVar}" />">
	<img width="16" height="16" src="<wp:resourceURL />plugins/jpfrontshortcut/static/img/icons/16x16/edit.png" alt="Edit frame <c:out value="${framePosVar}" />" /></a>
	<script type='text/javascript'>
	jQuery(document).ready(function () { 
	jQuery.struts2_jquery.bind(jQuery('#options_anchor_EDIT_FRAME_<c:out value="${framePosVar}" />'),{
	"opendialog": "widgetDialog",
	"jqueryaction": "anchor",
	"id": "anchor_config_EDIT_FRAME_<c:out value="${framePosVar}" />",
	"href": "<wp:info key="systemParam" paramName="applicationBaseURL" />do/jpfrontshortcut/Page/editFrame?langCode=<c:out value="${currentLang}" />&pageCode=<c:out value="${currentPageCode}" />&frame=<c:out value="${framePosVar}" />",
	"button": false
	});
	});  
	</script>
	
	<wp:currentShowlet param="code" var="showletCodeVar" />
	<c:if test="${null != showletCodeVar}" >
	<!-- TRASH SHOWLET -->
	<a id="options_anchor_TRASH_SHOWLET_<c:out value="${framePosVar}" />" href="javascript:void(0)" title="Remove Showlet from frame <c:out value="${framePosVar}" />">
	<img width="16" height="16" src="<wp:resourceURL />plugins/jpfrontshortcut/static/img/icons/16x16/clear.png" alt="Remove Showlet from frame <c:out value="${framePosVar}" />" /></a>
	<script type='text/javascript'>
	jQuery(document).ready(function () { 
	jQuery.struts2_jquery.bind(jQuery('#options_anchor_TRASH_SHOWLET_<c:out value="${framePosVar}" />'),{
	"opendialog": "widgetDialog",
	"jqueryaction": "anchor",
	"id": "anchor_config_TRASH_SHOWLET_<c:out value="${framePosVar}" />",
	"href": "<wp:info key="systemParam" paramName="applicationBaseURL" />do/jpfrontshortcut/Page/trashShowletFromPage?langCode=<c:out value="${currentLang}" />&pageCode=<c:out value="${currentPageCode}" />&frame=<c:out value="${framePosVar}" />",
	"button": false
	});
	});  
	</script>
	</c:if>
]
</wp:ifauthorized>
</c:if>