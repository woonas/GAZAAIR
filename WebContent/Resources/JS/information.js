/* 테이블탭 메뉴 이벤트 */
const tabletabEvent = (type) => {
    const menus = document.querySelectorAll(type + ' li>label');
    menus.forEach(menu => {
        menu.addEventListener('click', e => {
            menus.forEach(_menu => document.getElementById(_menu.previousElementSibling.id+'-container').classList.add('hidden'));
            if(e.target.tagName === "LABEL") document.getElementById(e.target.previousElementSibling.id+'-container').classList.remove('hidden');
        });
    });
};

/* drift 채팅 */

const chatService = () => {
    "use strict";

    !function() {
        var t = window.driftt = window.drift = window.driftt || [];
        if (!t.init) {
            if (t.invoked) return void (window.console && console.error && console.error("Drift snippet included twice."));
            t.invoked = !0, t.methods = [ "identify", "config", "track", "reset", "debug", "show", "ping", "page", "hide", "off", "on" ],
                t.factory = function(e) {
                    return function() {
                        var n = Array.prototype.slice.call(arguments);
                        return n.unshift(e), t.push(n), t;
                    };
                }, t.methods.forEach(function(e) {
                t[e] = t.factory(e);
            }), t.load = function(t) {
                var e = 3e5, n = Math.ceil(new Date() / e) * e, o = document.createElement("script");
                o.type = "text/javascript", o.async = !0, o.crossorigin = "anonymous", o.src = "https://js.driftt.com/include/" + n + "/" + t + ".js";
                var i = document.getElementsByTagName("script")[0];
                i.parentNode.insertBefore(o, i);
            };
        }
    }();
    drift.SNIPPET_VERSION = '0.3.1';
    drift.load('w27c27educhn');
};


(() => {

   if (location.pathname.indexOf('faq') !== -1) {
        const questions = document.querySelectorAll('.accordion-title');
        questions.forEach(question => {
            question.addEventListener('click', () =>{
                const expanded = document.querySelector('.is-expanded');
                if(question.parentElement.classList.contains('is-expanded')) question.parentElement.classList.remove('is-expanded');
                else {
                    if(expanded) expanded.classList.remove('is-expanded');
                    question.parentElement.classList.add('is-expanded');
                }
            });
        });
    } else {
       // 서비스안내에서 메인네비 하단줄 제거
       menuBorderRemover();

       // 서비스안내 서브네비 클릭이벤트


       if(location.pathname.indexOf('reservation') !== -1) {
           tabEvent('.tab-menu1');
           tabletabEvent('#table-tab-1');
           tabletabEvent('#table-tab-2');
       }

       else if (location.pathname.indexOf('fare') !== -1) {
           tabEvent('.tab-menu1');
       }
   }
})();