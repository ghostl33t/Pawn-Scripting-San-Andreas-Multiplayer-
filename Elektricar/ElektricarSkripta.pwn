#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <zcmd>
/* TEXTDRAWSI */
new PlayerText:ELEKTD0[MAX_PLAYERS];
new PlayerText:ELEKTD1[MAX_PLAYERS];
new PlayerText:ELEKTD2[MAX_PLAYERS];
new PlayerText:ELEKTD3[MAX_PLAYERS];
new PlayerText:ELEKTD4[MAX_PLAYERS];
new PlayerText:ELEKTD5[MAX_PLAYERS];
new PlayerText:ELEKTD6[MAX_PLAYERS];
new PlayerText:ELEKTD7[MAX_PLAYERS];
new PlayerText:ELEKTD8[MAX_PLAYERS];
new PlayerText:ELEKTD9[MAX_PLAYERS];
/* KLIKNUTA BOJA */
new kliknuta_boja[MAX_PLAYERS];
new sljedeca_boja[MAX_PLAYERS];
new uspjesno_kliknuto[MAX_PLAYERS];
main()
{
	print("\n----------------------------------");
	print(" SAGAPO");
	print("----------------------------------\n");
}
public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}
public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
    ELEKTD0[playerid] = CreatePlayerTextDraw(playerid, 474.500000, 160.750000, "usebox");
	PlayerTextDrawLetterSize(playerid, ELEKTD0[playerid], 0.000000, 13.731945);
	PlayerTextDrawTextSize(playerid, ELEKTD0[playerid], 151.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, ELEKTD0[playerid], 1);
	PlayerTextDrawColor(playerid, ELEKTD0[playerid], 0);
	PlayerTextDrawUseBox(playerid, ELEKTD0[playerid], true);
	PlayerTextDrawBoxColor(playerid, ELEKTD0[playerid], 102);
	PlayerTextDrawSetShadow(playerid, ELEKTD0[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD0[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD0[playerid], 0);

	ELEKTD1[playerid] = CreatePlayerTextDraw(playerid, 152.500000, 159.250000, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD1[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD1[playerid], 3.000000, 126.875000);
	PlayerTextDrawAlignment(playerid, ELEKTD1[playerid], 1);
	PlayerTextDrawColor(playerid, ELEKTD1[playerid], -1378294017);
	PlayerTextDrawSetShadow(playerid, ELEKTD1[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD1[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD1[playerid], 4);

	ELEKTD2[playerid] = CreatePlayerTextDraw(playerid, 469.500000, 159.250000, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD2[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD2[playerid], 3.000000, 126.875000);
	PlayerTextDrawAlignment(playerid, ELEKTD2[playerid], 1);
	PlayerTextDrawColor(playerid, ELEKTD2[playerid], -1378294017);
	PlayerTextDrawSetShadow(playerid, ELEKTD2[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD2[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD2[playerid], 4);

	ELEKTD3[playerid] = CreatePlayerTextDraw(playerid, 176.500000, 161.437500, "Spojite iste boje da spojite zice");
	PlayerTextDrawLetterSize(playerid, ELEKTD3[playerid], 0.449999, 1.600000);
	PlayerTextDrawAlignment(playerid, ELEKTD3[playerid], 1);
	PlayerTextDrawColor(playerid, ELEKTD3[playerid], -1);
	PlayerTextDrawSetShadow(playerid, ELEKTD3[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD3[playerid], 1);
	PlayerTextDrawBackgroundColor(playerid, ELEKTD3[playerid], 51);
	PlayerTextDrawFont(playerid, ELEKTD3[playerid], 3);
	PlayerTextDrawSetProportional(playerid, ELEKTD3[playerid], 1);

	ELEKTD4[playerid] = CreatePlayerTextDraw(playerid, 209.500000, 182.437500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD4[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD4[playerid], 7.437500, 7.437500);
	PlayerTextDrawAlignment(playerid, ELEKTD4[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD4[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid, ELEKTD4[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD4[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD4[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD4[playerid], true);

	ELEKTD5[playerid] = CreatePlayerTextDraw(playerid, 401.500000, 227.937500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD5[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD5[playerid], 7.437500, 8.312500);
	PlayerTextDrawAlignment(playerid, ELEKTD5[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD5[playerid], -5963521);
	PlayerTextDrawSetShadow(playerid, ELEKTD5[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD5[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD5[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD5[playerid], true);

	ELEKTD6[playerid] = CreatePlayerTextDraw(playerid, 209.000000, 228.812500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD6[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD6[playerid], 7.500000, 7.437500);
	PlayerTextDrawAlignment(playerid, ELEKTD6[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD6[playerid], -16776961);
	PlayerTextDrawSetShadow(playerid, ELEKTD6[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD6[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD6[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD6[playerid], true);

	ELEKTD7[playerid] = CreatePlayerTextDraw(playerid, 402.000000, 204.312500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD7[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD7[playerid], 7.500000, 7.875000);
	PlayerTextDrawAlignment(playerid, ELEKTD7[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD7[playerid], -16776961);
	PlayerTextDrawSetShadow(playerid, ELEKTD7[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD7[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD7[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD7[playerid], true);

	ELEKTD8[playerid] = CreatePlayerTextDraw(playerid, 209.000000, 203.437500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD8[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD8[playerid], 8.000000, 8.312500);
	PlayerTextDrawAlignment(playerid, ELEKTD8[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD8[playerid], -16711681);
	PlayerTextDrawSetShadow(playerid, ELEKTD8[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD8[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD8[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD8[playerid], true);

	ELEKTD9[playerid] = CreatePlayerTextDraw(playerid, 401.000000, 182.437500, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, ELEKTD9[playerid], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, ELEKTD9[playerid], 8.000000, 8.312500);
	PlayerTextDrawAlignment(playerid, ELEKTD9[playerid], 2);
	PlayerTextDrawColor(playerid, ELEKTD9[playerid], -16711681);
	PlayerTextDrawSetShadow(playerid, ELEKTD9[playerid], 0);
	PlayerTextDrawSetOutline(playerid, ELEKTD9[playerid], 0);
	PlayerTextDrawFont(playerid, ELEKTD9[playerid], 4);
	PlayerTextDrawSetSelectable(playerid, ELEKTD9[playerid], true);
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}
CMD:start(playerid, params[])
{
	uspjesno_kliknuto[playerid] = 0;
    SetPlayerCheckpoint(playerid, 2055.8154, 1385.1007, 10.8276, 3.0);
	return 1;
}
public OnPlayerEnterCheckpoint(playerid)
{
    if(IsPlayerInCheckpoint(playerid))
	{
        PlayerTextDrawShow(playerid, ELEKTD0[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD1[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD2[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD3[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD4[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD5[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD6[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD7[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD8[playerid]);
        PlayerTextDrawShow(playerid, ELEKTD9[playerid]);
        DisablePlayerCheckpoint(playerid);
        SelectTextDraw(playerid, 0x00FFFFFF);
	}
	return 1;
}
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{

    if(playertextid == ELEKTD4[playerid])
        {
            kliknuta_boja[playerid] = 1;
        }
        else if(playertextid == ELEKTD5[playerid] && kliknuta_boja[playerid] == 1)
        {
            kliknuta_boja[playerid] = 0;
            uspjesno_kliknuto[playerid]++;
			PlayerTextDrawHide(playerid, ELEKTD5[playerid]);
            PlayerTextDrawHide(playerid, ELEKTD4[playerid]);
		}
		else if(playertextid != ELEKTD5[playerid] && kliknuta_boja[playerid] == 1)
		{
		    SendClientMessage(playerid,0xFF0000FF,"Pogresna boja, morate spojiti iste boje koje predstavljaju zice!");
            kliknuta_boja[playerid] = 0;
		}
		else if(playertextid == ELEKTD6[playerid])
		{
		    kliknuta_boja[playerid] = 2;
		}
		else if(playertextid == ELEKTD7[playerid] && kliknuta_boja[playerid] == 2)
        {
            kliknuta_boja[playerid] = 0;
            uspjesno_kliknuto[playerid]++;
			PlayerTextDrawHide(playerid, ELEKTD7[playerid]);
            PlayerTextDrawHide(playerid, ELEKTD6[playerid]);
		}
		else if(playertextid != ELEKTD7[playerid] && kliknuta_boja[playerid] == 2)
		{
		    SendClientMessage(playerid,0xFF0000FF,"Pogresna boja, morate spojiti iste boje koje predstavljaju zice!");
            kliknuta_boja[playerid] = 0;
		}


        else if(playertextid == ELEKTD8[playerid])
        {
            kliknuta_boja[playerid] = 3;
        }
        else if(playertextid == ELEKTD9[playerid] && kliknuta_boja[playerid] == 3)
        {
            kliknuta_boja[playerid] = 0;
            sljedeca_boja[playerid] = 0;
            uspjesno_kliknuto[playerid]++;
			PlayerTextDrawHide(playerid, ELEKTD9[playerid]);
            PlayerTextDrawHide(playerid, ELEKTD8[playerid]);
		}
		else if(playertextid != ELEKTD9[playerid] && kliknuta_boja[playerid] == 3)
		{
		    SendClientMessage(playerid,0xFF0000FF,"Pogresna boja, morate spojiti iste boje koje predstavljaju zice!");
            kliknuta_boja[playerid] = 0;
		}
	if(uspjesno_kliknuto[playerid] == 3)
	{
		SendClientMessage(playerid,0xFF0000FF,"Uspjesno ste spojili sve zice.");
		PlayerTextDrawHide(playerid, ELEKTD0[playerid]);
		PlayerTextDrawHide(playerid, ELEKTD1[playerid]);
		PlayerTextDrawHide(playerid, ELEKTD3[playerid]);
		PlayerTextDrawHide(playerid, ELEKTD2[playerid]);
	}
	return 1;
}
