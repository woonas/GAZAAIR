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


(() => {
    if(location.pathname.indexOf('reservation') !== -1) {
        tabEvent('.tab-menu1');
        tabletabEvent('#table-tab-1');
        tabletabEvent('#table-tab-2');
    }

   else if (location.pathname.indexOf('fare') !== -1) {
        tabEvent('.tab-menu1');
    }
})();