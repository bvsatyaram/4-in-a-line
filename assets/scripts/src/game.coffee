Game = 
  init: ->
    $('#board .cell').click ->
      colNum = @.dataset.colNum
      currentColor = Game.colors[Game.currentPlayer]
      cellToAdd = $('.cell[data-col-num="' + colNum + '"][data-cell-type="none"]').last()
      cellToAdd[0].dataset.cellType = currentColor
      cellToAdd.find('.slot').addClass(currentColor).addClass('bounceInDown')
      Game.currentPlayer = (Game.currentPlayer + 1)%2
  currentPlayer: 0
  colors: ['green', 'red']

$ ->
  Game.init()