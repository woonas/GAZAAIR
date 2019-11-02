$(document).ready(function() {
    $('#defaultForm').on('init.field.bv', function(e, data) {
        // data.bv      --> The BootstrapValidator instance
        // data.field   --> The field name
        // data.element --> The field element

        var $parent    = data.element.parents('.form-group'),
            $icon      = $parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]'),
            options    = data.bv.getOptions(),                      // Entire options
            validators = data.bv.getOptions(data.field).validators; // The field validators

        if (validators.notEmpty && options.feedbackIcons && options.feedbackIcons.required) {
            // The field uses notEmpty validator
            // Add required icon
            $icon.addClass(options.feedbackIcons.required).show();
        }
    })
        .bootstrapValidator({
        message: '올바른 양식이 아닙니다.',
        feedbackIcons: {
            required: 'glyphicon glyphicon-asterisk',
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            gender: {
                validators: {
                    notEmpty: {
                        message: '성별은 필수 항목입니다.'
                    }
                }
            },
            username: {
                message: '올바른 아이디가 아닙니다.',
                validators: {
                    notEmpty: {
                        message: '아이디는 필수 항목입니다.'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9]+$/,
                        message: '6 ~ 15자리 영문(대소문자 구별), 숫자 조합 입력 가능'
                    },
                    stringLength: {
                        min: 6,
                        max: 15,
                        message: '6 ~ 15자리 영문(대소문자 구별), 숫자 조합 입력 가능'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: '비밀번호는 필수 항목입니다.'
                    },
                    stringLength: {
                        min: 8,
                        max: 20,
                        message: '8 ~ 20자리 영문, 숫자, 특수문자 입력 가능'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: '비밀번호확인은 필수 항목입니다.'
                    },
                    identical: {
                        field: 'password',
                        message: '비밀번호가 같지않습니다.'
                    }
                }
            },
            country: {
                validators: {
                    notEmpty: {
                        message: '거주지역은 필수 항목입니다.'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: '이메일은 필수 항목입니다.'
                    },
                    emailAddress: {
                        message: '올바른 이메일주소가 아닙니다.'
                    }
                }
            },
            phone1: {
                validators: {
                    notEmpty: {
                        message: '필수 항목입니다.'
                    },
                    stringLength: {
                        min: 3,
                        max: 3,
                        message: '잘못된 양식입니다.'
                    }
                }
            },
            phone2: {
                validators: {
                    notEmpty: {
                        message: '필수 항목입니다.'
                    },
                    stringLength: {
                        min: 4,
                        max: 4,
                        message: '잘못된 양식입니다.'
                    }
                }
            },
            phone3: {
                validators: {
                    notEmpty: {
                        message: '필수 항목입니다.'
                    },
                    stringLength: {
                        min: 4,
                        max: 4,
                        message: '잘못된 양식입니다.'
                    }
                }
            },
            acceptTerms: {
                validators: {
                    notEmpty: {
                        message: '약관에 동의해주십시오.'
                    }
                }
            },
            addr1: {
                validators: {
                    notEmpty: {
                        message: "주소는 필수 항목입니다."
                    }
                }
            },
            oldPassword: {
                validators: {
                    notEmpty: {
                        message: '비밀번호를 입력하세요.'
                    }
                }
            },
        }
    }).on('status.field.bv', function(e, data) {
        // Remove the required icon when the field updates its status
        var $parent    = data.element.parents('.form-group'),
            $icon      = $parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]'),
            options    = data.bv.getOptions(),                      // Entire options
            validators = data.bv.getOptions(data.field).validators; // The field validators

        if (validators.notEmpty && options.feedbackIcons && options.feedbackIcons.required) {
            $icon.removeClass(options.feedbackIcons.required).addClass('glyphicon');
        }
    });
});

let addrSearchWindow;
const addrSearch = () => {
    if(addrSearchWindow) addrSearchWindow.destroy();
    addrSearchWindow = new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postalCode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
            document.getElementById("addr2").value = '';
        }
    }).open();
};
