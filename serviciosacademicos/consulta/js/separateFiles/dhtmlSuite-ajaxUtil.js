if(!window.DHTMLSuite)var DHTMLSuite=new Object();DHTMLSuite.ajaxUtil=function(){var ajaxObjects;this.ajaxObjects=new Array();try{if(!standardObjectsCreated)DHTMLSuite.createStandardObjects()}catch(e){alert('Include the dhtmlSuite-common.js file')}
var objectIndex;this.objectIndex=DHTMLSuite.variableStorage.arrayDSObjects.length;DHTMLSuite.variableStorage.arrayDSObjects[this.objectIndex]=this}
DHTMLSuite.ajaxUtil.prototype={sendRequest:function(url,paramString,functionNameOnComplete){var ind=this.objectIndex;var ajaxIndex=this.ajaxObjects.length;try{this.ajaxObjects[ajaxIndex]=new sack()}catch(e){alert('Could not create ajax object. Please make sure that ajax.js is included')}
if(paramString){var params=this.__getArrayByParamString(paramString);for(var no=0;no<params.length;no++){this.ajaxObjects[ajaxIndex].setVar(params[no].key,params[no].value)}}
this.ajaxObjects[ajaxIndex].requestFile=url;this.ajaxObjects[ajaxIndex].onCompletion=function(){DHTMLSuite.variableStorage.arrayDSObjects[ind].__onComplete(ajaxIndex,functionNameOnComplete)};this.ajaxObjects[ajaxIndex].onError=function(){DHTMLSuite.variableStorage.arrayDSObjects[ind].__onError(ajaxIndex,url)};this.ajaxObjects[ajaxIndex].runAJAX()},__getArrayByParamString:function(paramString){var retArray=new Array();var items=paramString.split(/&/g);for(var no=0;no<items.length;no++){var tokens=items[no].split(/=/);var index=retArray.length;retArray[index]={key:tokens[0],value:tokens[1] }}
return retArray},__onError:function(ajaxIndex,url){alert('Could not send Ajax request to '+url)},__onComplete:function(ajaxIndex,functionNameOnComplete){var ind=this.objectIndex;if(functionNameOnComplete){eval(functionNameOnComplete+'(DHTMLSuite.variableStorage.arrayDSObjects['+ind+'].ajaxObjects['+ajaxIndex+'])')}
setTimeout('DHTMLSuite.variableStorage.arrayDSObjects['+ind+'].__deleteAjaxObject('+ajaxIndex+')',3000)},__deleteAjaxObject:function(ajaxIndex){this.ajaxObjects[ajaxIndex]=false}}
DHTMLSuite.ajax=new DHTMLSuite.ajaxUtil();