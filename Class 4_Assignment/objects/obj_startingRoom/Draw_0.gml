/// @description Text in starting page
// You can write your code in this editor

draw_set_font(fnt_StartingScreen);

draw_text(180, 700, "Hold space to read the story... Press Enter to start")

if (keyboard_check(vk_space)) {
	draw_text(440, 40, "Hello friend...");
	draw_text(80, 90, "You have been through a long journey over 20 levels of this game");
	draw_text(20, 140, "No matter what the challenge, you passed them all and are now just a few");
	draw_text(260, 190, "steps away from finishing the game");
	draw_text(130, 240, "I hope you're not too eager to finish the game so soon...");
	draw_text(320, 340, "(Use WASD to walk around and");
	draw_text(100, 390, "press E to interact and Space to read what the keys are saying)");
}