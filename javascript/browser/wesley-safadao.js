;(function() {
  'use strict';

  function wesleySafadao(day, month, year) {
    var safadeza, anjo, sum = 0;
    for(; +month--;) sum+= month; 
    safadeza = sum + (+year / 100) * (50 - +day);
    anjo = 100 - safadeza;
    return 'Você é ' + safadeza.toFixed(2) + '% safado e ' + anjo.toFixed(2) + '% anjo';
  }

  window.wesleySafadao = wesleySafadao;
})();
