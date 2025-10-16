.class public Ljwtc/android/chess/play/GameSettingsDialog;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "GameSettingsDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 21
    invoke-direct/range {p0 .. p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const v1, 0x7f0b0022

    .line 23
    invoke-virtual {v8, v1}, Ljwtc/android/chess/play/GameSettingsDialog;->setContentView(I)V

    const-string v1, "opponent"

    const/4 v3, 0x1

    .line 25
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "myTurn"

    .line 26
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "levelMode"

    .line 28
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "level"

    const/4 v7, 0x2

    .line 29
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "levelPly"

    .line 30
    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const v10, 0x7f080145

    .line 32
    invoke-virtual {v8, v10}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    const v11, 0x7f080147

    .line 33
    invoke-virtual {v8, v11}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioButton;

    const v12, 0x7f080148

    .line 34
    invoke-virtual {v8, v12}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioButton;

    const v13, 0x7f080146

    .line 35
    invoke-virtual {v8, v13}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    const v14, 0x7f08006f

    .line 36
    invoke-virtual {v8, v14}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RadioButton;

    const v15, 0x7f08006e

    .line 37
    invoke-virtual {v8, v15}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RadioButton;

    const v7, 0x7f080082

    .line 38
    invoke-virtual {v8, v7}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    const v3, 0x7f080081

    .line 39
    invoke-virtual {v8, v3}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const v2, 0x7f020009

    move/from16 v16, v9

    const v9, 0x1090008

    .line 41
    invoke-static {v0, v2, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    const v9, 0x1090009

    .line 42
    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v9, 0x7f0e01dd

    move/from16 v17, v6

    .line 43
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v2, 0x7f020008

    const v6, 0x1090008

    .line 46
    invoke-static {v0, v2, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    const v6, 0x1090009

    .line 47
    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 51
    invoke-virtual {v10, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x1

    xor-int/2addr v1, v0

    .line 52
    invoke-virtual {v11, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 54
    invoke-virtual {v12, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    xor-int/lit8 v1, v4, 0x1

    .line 55
    invoke-virtual {v13, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_1
    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    new-instance v0, Ljwtc/android/chess/play/GameSettingsDialog$1;

    invoke-direct {v0, v8, v15, v14}, Ljwtc/android/chess/play/GameSettingsDialog$1;-><init>(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v14, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Ljwtc/android/chess/play/GameSettingsDialog$2;

    invoke-direct {v0, v8, v14, v15}, Ljwtc/android/chess/play/GameSettingsDialog$2;-><init>(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v15, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    add-int/lit8 v6, v17, -0x1

    .line 75
    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setSelection(I)V

    add-int/lit8 v9, v16, -0x1

    .line 76
    invoke-virtual {v3, v9}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f080023

    .line 78
    invoke-virtual {v8, v0}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 79
    new-instance v11, Ljwtc/android/chess/play/GameSettingsDialog$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object v13, v3

    move-object v3, v10

    move-object v4, v12

    move-object v5, v14

    move-object v6, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Ljwtc/android/chess/play/GameSettingsDialog$3;-><init>(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/content/SharedPreferences;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000d

    .line 100
    invoke-virtual {v8, v0}, Ljwtc/android/chess/play/GameSettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    new-instance v1, Ljwtc/android/chess/play/GameSettingsDialog$4;

    invoke-direct {v1, v8}, Ljwtc/android/chess/play/GameSettingsDialog$4;-><init>(Ljwtc/android/chess/play/GameSettingsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/play/GameSettingsDialog;Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/GameSettingsDialog;->setResult(Landroid/os/Bundle;)V

    return-void
.end method
