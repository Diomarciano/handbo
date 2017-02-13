var input = document.getElementById('inputrupiah');
input.addEventListener('keydown', function(event) {
{
	key = event.which || event.keyCode;
	if ( 	key != 188 // Comma
		 && key != 8 // Backspace
		 && key != 17 && key != 86 & key != 67 // Ctrl c, ctrl v
		 && (key < 48 || key > 57) // Non digit
		 // Dan masih banyak lagi seperti tombol del, panah kiri dan kanan, tombol tab, dll
		) 
	{
		event.preventDefault();
		return;
	}
});
