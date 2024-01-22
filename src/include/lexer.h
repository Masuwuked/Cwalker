#ifndef LEXER_H
#define LEXER_H
typedef struct LEXER_STRUCT
{
	char c
	unsigned int i;
	char* contents;
} lexer_T* init_lexer(char* contents);

void lexer_advanced(lexer_T* lexer);

void lexer_skip_whitespace(lexer_T* lexer);
#endif

