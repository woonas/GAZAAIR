(()=> {
    const methods = document.querySelectorAll('input[name=payment-method]');
    const method_windows = document.querySelectorAll('div.row[id^=payment-method-]');
    methods.forEach(method => {
       method.addEventListener('click', () => {
            method_windows.forEach(method_window => {
                method_window.classList.add('hidden');
                method_window.nextElementSibling.classList.add('hidden');
            });
            const targetId = document.querySelector('input[name=payment-method]:checked').id;
            const targetWindow = document.getElementById('payment-method-' + targetId);
            targetWindow.classList.remove('hidden');
            targetWindow.nextElementSibling.classList.remove('hidden');
       });
    });
})();