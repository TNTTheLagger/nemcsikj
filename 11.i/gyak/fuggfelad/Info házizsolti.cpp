/*WHILE2*/
#include <stdio.h>
int main ()
{
   int ch, A_kar = 0, Q_kar = 0, W_kar = 0, E_kar = 0, R_kar = 0, T_kar = 0,
   Z_kar = 0, U_kar = 0, I_kar = 0, O_kar = 0, P_kar = 0, S_kar = 0, D_kar = 0,
   F_kar = 0, G_kar = 0, H_kar = 0, J_kar = 0, K_kar = 0, L_kar = 0, Y_kar = 0,
   X_kar = 0, C_kar = 0, V_kar = 0, B_kar = 0, N_kar = 0, M_kar = 0;
   printf("Szoveg (. zarja): ");
   while ((ch = getchar()) != '.')
    {
      switch(ch)
      {
        case 'A': A_kar++; break;
        case 'Q': Q_kar++; break;
        case 'W': W_kar++; break;
        case 'E': E_kar++; break;
        case 'R': R_kar++; break;
        case 'T': T_kar++; break;
        case 'Z': Z_kar++; break;
        case 'U': U_kar++; break;
        case 'I': I_kar++; break;
        case 'O': O_kar++; break;
        case 'P': P_kar++; break;
        case 'S': S_kar++; break;
        case 'D': D_kar++; break;
        case 'F': F_kar++; break;
        case 'G': G_kar++; break;
        case 'H': H_kar++; break;
        case 'J': J_kar++; break;
        case 'K': K_kar++; break;
        case 'L': L_kar++; break;
        case 'Y': Y_kar++; break;
        case 'X': X_kar++; break;
        case 'C': C_kar++; break;
        case 'V': V_kar++; break;
        case 'B': B_kar++; break;
        case 'N': N_kar++; break;
        case 'M': M_kar++; break;
      }
 }

printf("Az A karakterek szama: %d\n",A_kar);
printf("A Q karakterek szama: %d\n",Q_kar);
printf("A W karakterek szama: %d\n",W_kar);
printf("Az E karakterek szama: %d\n",E_kar);
printf("Az R karakterek szama: %d\n",R_kar);
printf("A T karakterek szama: %d\n",T_kar);
printf("A Z karakterek szama: %d\n",Z_kar);
printf("Az U karakterek szama: %d\n",U_kar);
printf("Az I karakterek szama: %d\n",I_kar);
printf("Az O karakterek szama: %d\n",O_kar);
printf("A P karakterek szama: %d\n",P_kar);
printf("Az S karakterek szama: %d\n",S_kar);
printf("A D karakterek szama: %d\n",D_kar);
printf("Az F karakterek szama: %d\n",F_kar);
printf("A G karakterek szama: %d\n",G_kar);
printf("A H karakterek szama: %d\n",H_kar);
printf("A J karakterek szama: %d\n",J_kar);
printf("A K karakterek szama: %d\n",K_kar);
printf("Az L karakterek szama: %d\n",L_kar);
printf("Az Y karakterek szama: %d\n",Y_kar);
printf("Az X karakterek szama: %d\n",X_kar);
printf("A C karakterek szama: %d\n",C_kar);
printf("A V karakterek szama: %d\n",V_kar);
printf("A B karakterek szama: %d\n",B_kar);
printf("Az N karakterek szama: %d\n",N_kar);
printf("Az M karakterek szama: %d\n",M_kar);

fflush (stdin);getchar();
return 0;
}
