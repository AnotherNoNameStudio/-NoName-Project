//scr_itempickup();
for (i = 0; i < maxItems; i++)
{
    if (global.inventory[i] == -1)
    {
        global.inventory[i] = argument0;
        return 1;
    }
}
return 0;
