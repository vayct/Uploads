WC			[A-Za-z']
NW			[^A-Za-z'0-9]

%start			INW NIW START_SENTENCE

%%
\n			{BEGIN START_SENTENCE; ECHO;} 
[.!?][ ]*/{WC}		{BEGIN START_SENTENCE; ECHO;}

	/* The INITIAL state is added for this part to make sure that the very first
	texting shorthand will get converted  with capitalization.
	After that, the START_SENTENCE state will begin after a newline or a punctuation mark. */
<INITIAL,START_SENTENCE>"btw"/{NW}		{BEGIN INW; printf("By the way"); }
<INITIAL,START_SENTENCE>"asap"/{NW}		{BEGIN INW; printf("As soon as possible"); }
<INITIAL,START_SENTENCE>"afaik"/{NW}		{BEGIN INW; printf("As far as I know"); }
<INITIAL,START_SENTENCE>"brb"/{NW}		{BEGIN INW; printf("Be right back"); }
<INITIAL,START_SENTENCE>"cya"/{NW}		{BEGIN INW; printf("See ya"); }
<INITIAL,START_SENTENCE>"eta"/{NW}		{BEGIN INW; printf("Estimated time of arrival"); }
<INITIAL,START_SENTENCE>"fyi"/{NW}		{BEGIN INW; printf("For your information"); }
<INITIAL,START_SENTENCE>"gg"/{NW}		{BEGIN INW; printf("Good game"); }
<INITIAL,START_SENTENCE>"np"/{NW}		{BEGIN INW; printf("No problem"); }
<INITIAL,START_SENTENCE>"yw"/{NW}		{BEGIN INW; printf("You welcome"); }
<INITIAL,START_SENTENCE>"wb"/{NW}		{BEGIN INW; printf("Welcome back"); }
<INITIAL,START_SENTENCE>"tyvm"/{NW}		{BEGIN INW; printf("Thank you very much"); }
<INITIAL,START_SENTENCE>"tmi"/{NW}		{BEGIN INW; printf("Too much information"); }
<INITIAL,START_SENTENCE>"til"/{NW}		{BEGIN INW; printf("Today I learned"); }
<INITIAL,START_SENTENCE>"lol"/{NW}		{BEGIN INW; printf("Laugh out loud"); }
<INITIAL,START_SENTENCE>"jk"/{NW}		{BEGIN INW; printf("Just kidding"); }
<INITIAL,START_SENTENCE>"gl"/{NW}		{BEGIN INW; printf("Good luck"); }
<INITIAL,START_SENTENCE>"gratz"/{NW}		{BEGIN INW; printf("Congratulations"); }
<INITIAL,START_SENTENCE>"ftfy"/{NW}		{BEGIN INW; printf("Fixed that for you"); }
<INITIAL,START_SENTENCE>"nvm"/{NW}		{BEGIN INW; printf("Nevermind"); }
<INITIAL,START_SENTENCE>"tbh"/{NW}		{BEGIN INW; printf("To be honest"); }
<INITIAL,START_SENTENCE>"u"/{NW}		{BEGIN INW; printf("You"); }
<INITIAL,START_SENTENCE>"w8"/{NW}		{BEGIN INW; printf("Wait"); }




{NW}			{BEGIN NIW; ECHO; }

<NIW>"btw"/{NW}		{BEGIN INW; printf("by the way"); }
<NIW>"asap"/{NW}	{BEGIN INW; printf("as soon as possible"); }
<NIW>"afaik"/{NW}	{BEGIN INW; printf("as far as I know"); }
<NIW>"brb"/{NW}		{BEGIN INW; printf("be right back"); }
<NIW>"cya"/{NW}		{BEGIN INW; printf("see ya"); }
<NIW>"eta"/{NW}		{BEGIN INW; printf("estimated time of arrival"); }
<NIW>"fyi"/{NW}		{BEGIN INW; printf("for your information"); }
<NIW>"gg"/{NW}		{BEGIN INW; printf("good game"); }
<NIW>"np"/{NW}		{BEGIN INW; printf("no problem"); }
<NIW>"yw"/{NW}		{BEGIN INW; printf("you welcome"); }
<NIW>"wb"/{NW}		{BEGIN INW; printf("welcome back"); }
<NIW>"tyvm"/{NW}	{BEGIN INW; printf("thank you very much"); }
<NIW>"tmi"/{NW}		{BEGIN INW; printf("too much information"); }
<NIW>"til"/{NW}		{BEGIN INW; printf("today I learned"); }
<NIW>"lol"/{NW}		{BEGIN INW; printf("laugh out loud"); }
<NIW>"jk"/{NW}		{BEGIN INW; printf("just kidding"); }
<NIW>"gl"/{NW}		{BEGIN INW; printf("good luck"); }
<NIW>"gratz"/{NW}	{BEGIN INW; printf("congratulations"); }
<NIW>"ftfy"/{NW}	{BEGIN INW; printf("fixed that for you"); }
<NIW>"nvm"/{NW}		{BEGIN INW; printf("nevermind"); }
<NIW>"tbh"/{NW}		{BEGIN INW; printf("to be honest"); }
<NIW>"u"/{NW}		{BEGIN INW; printf("you"); }
<NIW>"w8"/{NW}		{BEGIN INW; printf("wait"); }



.			{BEGIN INW; ECHO;}
