//window.onload = function(){
//$('#imageEditor').on('show.bs.modal', function(event){

var Cropper = window.Cropper;
var URL = window.URL || window.webkitURL;
var container = document.querySelector('.img-container');
var images = container.querySelectorAll('img');
var download = document.getElementById('download');
var actions = document.getElementById('actions');
var dataX = document.getElementById('dataX');
var dataY = document.getElementById('dataY');
var dataHeight = document.getElementById('dataHeight');
var dataWidth = document.getElementById('dataWidth');
var dataRotate = document.getElementById('dataRotate');
var dataScaleX = document.getElementById('dataScaleX');
var dataScaleY = document.getElementById('dataScaleY');
var croppers = [];
var originalImageURL;
var uploadedImageType = 'image/jpeg';
var uploadedImageName = [];
var uploadedImageURL = [];
var options = [];
var checkCnt = 0;
//Import image
var inputImage = document.getElementById('inputImage');

$('#imageEditor').one('shown.bs.modal', function(){
/*$('#editorBtn').click(function () {*/
  //'use strict';

  for(var i= 0; i< images.length; i++){
	  
    options.push({
    aspectRatio: 1 / 1,
    preview: '.preview' + i,
    ready: function (e) {
      console.log("ready ? : "+e.type + ", i : " + i);
      
      checkCnt++;
      console.log("checkCnt : " + checkCnt);
      
      if(checkCnt == images.length) {    	  
    	  $('.img-preview:eq(0)').click();
      }
    },
    cropstart: function (e) {
      console.log(e.type, e.detail.action);
    },
    cropmove: function (e) {
      console.log(e.type, e.detail.action);
    },
    cropend: function (e) {
      console.log(e.type, e.detail.action);
    },
    crop: function (e) {
      var data = e.detail;
      console.log("data : " + data);
      console.log(e.type);
      dataX.value = Math.round(data.x);
      dataY.value = Math.round(data.y);
      dataHeight.value = Math.round(data.height);
      dataWidth.value = Math.round(data.width);
      dataRotate.value = typeof data.rotate !== 'undefined' ? data.rotate : '';
      dataScaleX.value = typeof data.scaleX !== 'undefined' ? data.scaleX : '';
      dataScaleY.value = typeof data.scaleY !== 'undefined' ? data.scaleY : '';
    },
    zoom: function (e) {
      console.log(e.type, e.detail.ratio);
    }
  });

  croppers.push(new Cropper(images[i], options[i]));

  console.log(images[i].src);
  
  originalImageURL = images[i].src;
  uploadedImageURL[i] ='';
  uploadedImageName[i]='';
  
}

  var cropper = '';
  var preIndex = 0;
  var cIndex = 0;

  // 추가 코드
  $('.img-preview').dblclick(function(){
    $('#inputImage').click();
  });

  $('.img-preview').click(function(){
    console.log($(this).index());
    
    $('.img-preview').css("border", "0px");
    $(this).css("border","2px solid hotpink");
    
    cIndex = $(this).index();

    $('.img-container').children().each((idx, elem) => {
      console.log(idx+", "+elem);
      (idx != cIndex*2+1) && $(elem).hide();
      (idx == cIndex*2+1) && $(elem).show();
    });
  });
  //
  console.log("크로퍼!!" + croppers.length);

  // Tooltip
  $('[data-toggle="tooltip"]').tooltip();

  // Buttons
  if (!document.createElement('canvas').getContext) {
    $('button[data-method="getCroppedCanvas"]').prop('disabled', true);
  }

  if (typeof document.createElement('cropper').style.transition === 'undefined') {
    $('button[data-method="rotate"]').prop('disabled', true);
    $('button[data-method="scale"]').prop('disabled', true);
  }

  // Download
  if (typeof download.download === 'undefined') {
    download.className += ' disabled';
    download.title = 'Your browser does not support download';
  }

  // Options
  actions.querySelector('.docs-toggles').onchange = function (event) {
    var e = event || window.event;
    var target = e.target || e.srcElement;
    var cropBoxData;
    var canvasData;
    var isCheckbox;
    var isRadio;

    if (!croppers[cIndex]) {
      return;
    }

    if (target.tagName.toLowerCase() === 'label') {
      target = target.querySelector('input');
      
    }

    isCheckbox = target.type === 'checkbox';
    isRadio = target.type === 'radio';

    if (isCheckbox || isRadio) {
      if (isCheckbox) {
        options[target.name] = target.checked;
        cropBoxData = croppers[cIndex].getCropBoxData();
        canvasData = croppers[cIndex].getCanvasData();

        options.ready = function () {
          console.log('ready');
          croppers[cIndex].setCropBoxData(cropBoxData).setCanvasData(canvasData);
        };
      } else {
        options[target.name] = target.value;
        options.ready = function () {
          console.log('ready');
        };
      }

      // Restart
      croppers[cIndex].destroy();
      croppers[cIndex] = new Cropper(images[cIndex], options[cIndex]);
    }
  };

  // Methods
  var result;
  actions.querySelector('.docs-buttons').onclick = function (event) {
    var e = event || window.event;
    var target = e.target || e.srcElement;
    var cropped;
    var result;
    var input;
    var data;

    if (!croppers[cIndex]) {
      return;
    }

    while (target !== this) {
      if (target.getAttribute('data-method')) {
        break;
      }

      target = target.parentNode;
    }

    if (target === this || target.disabled || target.className.indexOf('disabled') > -1) {
      return;
    }

    data = {
      method: target.getAttribute('data-method'),
      target: target.getAttribute('data-target'),
      option: target.getAttribute('data-option') || undefined,
      secondOption: target.getAttribute('data-second-option') || undefined
    };

    cropped = croppers[cIndex].cropped;
    console.log(data);

    if (data.method) {
      if (typeof data.target !== 'undefined') {
        input = document.querySelector(data.target);

        if (!target.hasAttribute('data-option') && data.target && input) {
          try {
            data.option = JSON.parse(input.value);
          } catch (exception) {
            console.log(e.message);
          }
        }
      }

      switch (data.method) {
        case 'rotate':
          if (cropped && options.viewMode > 0) {
            croppers[cIndex].clear();
          }

          break;

        case 'getCroppedCanvas':
          try {
            data.option = JSON.parse(data.option);
          } catch (e) {
            console.log(e.message);
          }

          if (uploadedImageType === 'image/jpeg') {
            if (!data.option) {
              data.option = {};
            }

            data.option.fillColor = '#ffff';
          }

          break;
      }

      result = croppers[cIndex][data.method](data.option, data.secondOption);
      
      console.log("result : " + result);
      
      switch (data.method) {
        case 'rotate':
          if (cropped && options.viewMode > 0) {
            croppers[cIndex].crop();
          }

          break;

        case 'scaleX':
        case 'scaleY':
          target.setAttribute('data-option', -data.option);
          break;

        case 'getCroppedCanvas':
          if (result) {
            // Bootstrap's Modal
            $('#getCroppedCanvasModal').modal().find('.modal-body').html(result);
            $('#download').attr('download','');
            try{
            if (!download.disabled) {
              download.download = uploadedImageName[cIndex]; //cropper의 다운로드 이름 설정
              download.href = result.toDataURL('image/jpeg',0.6); //다운 받을 url 경로??
              console.log("result : " + result.toDataURL());
              console.log("download.href : " + download.href);
            }
          }
          catch(exception){
            console.log("에러 확인!");
            $('#download').removeAttr('download');
          }
          }

          break;

        case 'destroy':
        	console.log("croppers destroy before: " + croppers[cIndex]);
          croppers[cIndex] = null;
          console.log("croppers destroy : " + croppers[cIndex]);
          if (uploadedImageURL[cIndex]) {
            URL.revokeObjectURL(uploadedImageURL[cIndex]);
            uploadedImageURL[cIndex] = '';
            images[cIndex].src = originalImageURL;
            console.log('destroy complate!');
          }

          break;
      }

      if (typeof result === 'object' && result !== croppers[cIndex] && input) {
        try {
          input.value = JSON.stringify(result);
        } catch (e) {
          console.log(e.message);
        }
      }
    }
  };

  document.body.onkeydown = function (event) {
    var e = event || window.event;

    if (e.target !== this || !croppers[cIndex] || this.scrollTop > 300) {
      return;
    }

    switch (e.keyCode) {
      case 37:
        e.preventDefault();
        croppers[cIndex].move(-1, 0);
        break;

      case 38:
        e.preventDefault();
        croppers[cIndex].move(0, -1);
        break;

      case 39:
        e.preventDefault();
        croppers[cIndex].move(1, 0);
        break;

      case 40:
        e.preventDefault();
        croppers[cIndex].move(0, 1);
        break;
    }
  };

  if (URL) {
  	inputImage.onchange = function () {
  		var files = this.files;
  		var file;
  		
  		if (croppers[cIndex] && files && files.length) {
  			file = files[0];
  			
  			if (/^image\/\w+/.test(file.type)) {
  				uploadedImageType = file.type;
  				uploadedImageName[cIndex] = file.name;
  				
  				if (uploadedImageURL[cIndex]) {
  					URL.revokeObjectURL(uploadedImageURL[cIndex]);
  				}
  				
  				console.log("file URL : " + URL.createObjectURL(file));
  				images[cIndex].src = uploadedImageURL[cIndex] = URL.createObjectURL(file);
  				console.log("upload URL : " + uploadedImageURL[cIndex]);
  				console.log("image URL : " + images[cIndex].src);
  				console.log(croppers[cIndex]);
  				croppers[cIndex].destroy();
  				croppers[cIndex] = new Cropper(images[cIndex], options[cIndex]);
  				inputImage.value = null;
  			} else {
  				window.alert('Please choose an image file.');
  			}
  		}
  	};
  } else {
  	inputImage.disabled = true;
  	inputImage.parentNode.className += ' disabled';
  }
 
  
  // 해시태그 글자 변경
  function getCaretPosition(editableDiv) { 
      var caretPos = 0, sel, range;   
      if (window.getSelection) {   
        sel = window.getSelection();   
        if (sel.rangeCount) {   
          range = sel.getRangeAt(0);   
        
          if (range.commonAncestorContainer.parentNode.parentNode == editableDiv) { 
            caretPos = range.endOffset;
   
        
        var i = range.commonAncestorContainer.parentNode.parentNode.childNodes.length - 1;
            var isEqualOrLower = false;
        while(i >= 0){
           if($(range.commonAncestorContainer.parentNode.parentNode.childNodes[i]).text() != $(range.commonAncestorContainer).text()){
              i--;
              continue;
           } else {
              while( i >= 0 ){
                 var $impl = $(range.commonAncestorContainer.parentNode.parentNode.childNodes[i - 1])
                      
                      caretPos += $impl.text().length
                      i--;
              }
              break;
           }
        }                  
            
          }                       
        }
        
          
      } else if (document.selection && document.selection.createRange) {   
        range = document.selection.createRange();   
        if (range.parentElement() == editableDiv) {  
           
          var tempEl = document.createElement("span");   
          editableDiv.insertBefore(tempEl, editableDiv.firstChild);   
          var tempRange = range.duplicate();   
          tempRange.moveToElementText(tempEl);   
          tempRange.setEndPoint("EndToEnd", range);   
          caretPos = tempRange.text.length;   
        }   
      }

      return caretPos;   
    }

  var update = function() { 
      $('#caretposition').val(getCaretPosition(this));   
    };    
    

  $('#editorDiv').on("mousedown mouseup keydown keyup", update);         
 

  var map = {16: false, 32: false}; 
  $("#editorDiv").keyup(function(e){   
      
      if ( (e.keyCode === 32 )  ) {   
             map[e.keyCode] = true;     
             
             if(parseInt($('#caretposition').val()) == 0){
             
             } else if (parseInt($('#caretposition').val()) == $(this).text().length){  // 고친 부분 1
             
             } else {
            	 
                return;
             }
             
             var regex = /(#[^#\s,;<>.]+)/gi;  
                 if(regex){ 
                	 var a = $(this).text().replace(regex,"$1" );
                	 console.log( a.length);
                    var newtxt = "<span class=fugue>" + $(this).text().replace(regex, "</span><span class=text-primary style='font-weight: bold;'>" + "$1" + "</span><span class=fugue>") + "</span>"
                    
                  newtxt += "<kz></kz>"   
                  $('#editorDiv').html(newtxt)  
                     var el = document.getElementById("editorDiv");   
                     console.log("childNodes: " + el.childNodes.length); 
                     var range = document.createRange();   
                     var sel = window.getSelection();   
                     range.setStart(el.lastChild, 0);   
                     range.collapse(false);   
                     sel.removeAllRanges();   
                     sel.addRange(range);                         

                     $('#editorDiv').focusout();   
                     $('#editorDiv').focus();
             if( parseInt($('#caretposition').val()) == $('#editorDiv').text().length ){
                
             }

             }   
      }   
     })
  
  
  //이미지 서버 업로드
	$('#feedUploadBtn').click(function(){
	
	var uploadImage = [];
		
	if($('#editorDiv').text().trim() == ""){
		
		  $('#feedErrorBody').children().remove();
		  $('#feedErrorBody').append('<p sytle="position: center;">피드 내용를 입력해주세요.<p/>')
		  $('#feedError').modal('show');
		  return;
	}
	else{

	  for(var i=0; i<images.length; i++){

		  var srcArr = ' ';
		  
		  srcArr = (images[i].src.split('/'));
		  
		  console.log(srcArr[srcArr.length-1]);
		  
		  if(srcArr[srcArr.length-1] != 'imageRegister.png'){
			  uploadImage.push(croppers[i].getCroppedCanvas().toDataURL('image/jpeg',0.6).split(',')[1]);
		  }
	  }
	  
	  
	  if(uploadImage.length == 0){
		  
		  $('#feedErrorBody').children().remove();
		  $('#feedErrorBody').append('<p sytle="position: center;">이미지를 등록해주세요.<p/>')
		  $('#feedError').modal('show');
		  return;
	  }
	  
	  $.ajax({
	       type : "post",
	       url : "/lid/myPage/FeedUpload.do",
	       traditional : true,
	       data : {uploadImg : uploadImage, bContent : $('#editorDiv').text()},
	       async : false,
	    
	       success : function(data) {
	      	  
	    	  console.log("ajax 전송 성공! : " + data);
	      	  location.reload();
	      	  
	       },
	       error : function(e) {
	    	   
	    	   
	       }
	    });
	  
		}
	});
});