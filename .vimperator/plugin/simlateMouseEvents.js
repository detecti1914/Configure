//
// simulate mouse events
//
//
(function(){
    let self=liberator.plugins.simulateMouseEvents=(function(){

        var fireMouseEvt=function(elem,evtString){
            var doc=content.document.wrappedJSObject;

            if(doc.createEvent){
                var evt=doc.createEvent('MouseEvents');
                evt.initEvent(evtString,true,false);
                elem.dispatchEvent(evt);
            }
            else if(doc.createEventObject){
                elem.fireEvent('on'+evtString);
            }
        };

        var PUBLICS={
            mouseover:function(elem){
                if(elem){
                    fireMouseEvt(elem,'mouseover');
                    elem.setAttribute('isMouseover',true);
                }
                else{
                    var activeElement=content.document.wrappedJSObject.activeElement;
                    fireMouseEvt(activeElement,'mouseover');
                    activeElement.setAttribute('isMouseover',true);
                }
                
                    
            },
            mouseout:function(elem){
                if(elem){
                    fireMouseEvt(elem,'mouseout');
                    elem.setAttribute('isMouseover',false);
                }
                else{
                    var activeElement=content.document.wrappedJSObject.activeElement;
                    fireMouseEvt(activeElement,'mouseout');

                    activeElement.setAttribute('isMouseover',false);
 
                }
            }
        };

        //registe extend hint command like ;m
        hints.addMode(
                'm',
                'active element trigge mouseover/mouseout',
                function(node){
                    if(node.getAttribute('isMouseover') && node.getAttribute('isMouseover') == 'true'){
                        self.mouseout(node);
                    }
                    else{
                        self.mouseover(node);
                        //全局的上一个触发过over事件的元素
                        if(self.overElem && self.overElem!=node){
                            try{
                                self.overElem.setAttribute('isMouseover',false);
                            }
                            catch(e){}
                        }
                        self.overElem=node;
                    }


        });
        return PUBLICS;
    })();
})();