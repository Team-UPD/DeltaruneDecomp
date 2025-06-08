berdly_index++;
if (berdly_index < wb_word_length)
{
	sb_berdly += string_char_at(sb_word_current, berdly_index);
	berdly_spell = true;
}
else
{
	berdly_finish = true;
}
