// ホバーしたタスクのbackground-colorを青色にする
// document.addEventListener('turbolinks:load', function() {
//     document.querySelectorAll('td').forEach(function (td) {
//         td.addEventListener('mouseover', function (e) {
//             e.currentTarget.style.backgroundColor = '#eff';
//         });

//         td.addEventListener('mouseout', function (e) {
//             e.currentTarget.style.backgroundColor = ''; 
//         });
//     });
// });
// Ajaxイベントを使った非同期
// document.addEventListener('turbolinks:load', function() {
//     document.querySelectorAll('.delete').forEach(function (a) {
//         a.addEventListener('ajax:success', function () {
//             let td = a.parentNode;
//             let tr = td.parentNode;
//             tr.style.display = 'none';
//         });
//     });
// });