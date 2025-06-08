noelle_index++;
if (noelle_index < wb_word_length)
{
	sb_noelle += string_char_at(sb_word_current, noelle_index);
	noelle_spell = true;
}
else
{
	noelle_finish = true;
}
