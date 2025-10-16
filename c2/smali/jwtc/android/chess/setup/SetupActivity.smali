.class public Ljwtc/android/chess/setup/SetupActivity;
.super Ljwtc/android/chess/activities/ChessBoardActivity;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/setup/SetupActivity$MyTouchListener;,
        Ljwtc/android/chess/setup/SetupActivity$MyDragListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupActivity"


# instance fields
.field private blackPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

.field private checkBlackCastleLong:Landroid/widget/CheckBox;

.field private checkBlackCastleShort:Landroid/widget/CheckBox;

.field private checkWhiteCastleLong:Landroid/widget/CheckBox;

.field private checkWhiteCastleShort:Landroid/widget/CheckBox;

.field private radioTurnBlack:Landroid/widget/RadioButton;

.field private radioTurnWhite:Landroid/widget/RadioButton;

.field private spinnerEPFile:Landroid/widget/Spinner;

.field private whitePieces:Ljwtc/android/chess/views/ChessPiecesStackView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/setup/SetupActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 27
    iget-object p0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/setup/SetupActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 27
    iget-object p0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method


# virtual methods
.method public OnMove(I)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->OnMove(I)V

    return-void
.end method

.method public OnState()V
    .locals 0

    .line 185
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->OnState()V

    return-void
.end method

.method public addPiece(III)V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPiece "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1, p2, p3}, Ljwtc/chess/JNI;->putPiece(III)V

    return-void
.end method

.method public afterCreate()V
    .locals 3

    const-string v0, "SetupActivity"

    const-string v1, " afterCreate"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    const v0, 0x7f0800fb

    .line 193
    invoke-virtual {p0, v0}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/views/ChessBoardView;

    iput-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    .line 195
    new-instance v0, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;

    invoke-direct {v0, p0}, Ljwtc/android/chess/setup/SetupActivity$MyDragListener;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    .line 196
    new-instance v0, Ljwtc/android/chess/setup/SetupActivity$MyTouchListener;

    invoke-direct {v0, p0}, Ljwtc/android/chess/setup/SetupActivity$MyTouchListener;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 199
    new-instance v1, Ljwtc/android/chess/views/ChessSquareView;

    invoke-direct {v1, p0, v0}, Ljwtc/android/chess/views/ChessSquareView;-><init>(Landroid/content/Context;I)V

    .line 200
    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/views/ChessSquareView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 201
    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/views/ChessBoardView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p0}, Ljwtc/android/chess/services/GameApi;->addListener(Ljwtc/android/chess/services/GameListener;)V

    return-void
.end method

.method public buildPieces()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 210
    new-instance v2, Ljwtc/android/chess/views/ChessSquareView;

    invoke-direct {v2, p0, v1}, Ljwtc/android/chess/views/ChessSquareView;-><init>(Landroid/content/Context;I)V

    .line 211
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    invoke-virtual {v2, v3}, Ljwtc/android/chess/views/ChessSquareView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 212
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->blackPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 214
    new-instance v2, Ljwtc/android/chess/views/ChessSquareView;

    invoke-direct {v2, p0, v1}, Ljwtc/android/chess/views/ChessSquareView;-><init>(Landroid/content/Context;I)V

    .line 215
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    invoke-virtual {v2, v3}, Ljwtc/android/chess/views/ChessSquareView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 216
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->whitePieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 219
    new-instance v2, Ljwtc/android/chess/views/ChessPieceView;

    invoke-direct {v2, p0, v0, v1, v1}, Ljwtc/android/chess/views/ChessPieceView;-><init>(Landroid/content/Context;III)V

    .line 220
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    invoke-virtual {v2, v3}, Ljwtc/android/chess/views/ChessPieceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->blackPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 223
    new-instance v2, Ljwtc/android/chess/views/ChessPieceView;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v1, v1}, Ljwtc/android/chess/views/ChessPieceView;-><init>(Landroid/content/Context;III)V

    .line 224
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    invoke-virtual {v2, v3}, Ljwtc/android/chess/views/ChessPieceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v3, p0, Ljwtc/android/chess/setup/SetupActivity;->whitePieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected commitFEN()V
    .locals 4

    const-string v0, "SetupActivity"

    const-string v1, "commitFEN"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    iget-object v1, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FEN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "game_pgn"

    const-string v2, ""

    .line 262
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "boardNum"

    const/4 v2, 0x0

    .line 263
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "game_id"

    const-wide/16 v2, 0x0

    .line 264
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0061

    .line 45
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->setContentView(I)V

    .line 47
    new-instance p1, Ljwtc/android/chess/setup/SetupApi;

    invoke-direct {p1}, Ljwtc/android/chess/setup/SetupApi;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 49
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->afterCreate()V

    const p1, 0x7f0800ce

    .line 51
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljwtc/android/chess/views/ChessPiecesStackView;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->blackPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    const p1, 0x7f08019c

    .line 52
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljwtc/android/chess/views/ChessPiecesStackView;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->whitePieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    const p1, 0x7f080071

    .line 53
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnWhite:Landroid/widget/RadioButton;

    const p1, 0x7f080070

    .line 54
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnBlack:Landroid/widget/RadioButton;

    const p1, 0x7f08003c

    .line 55
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->checkWhiteCastleShort:Landroid/widget/CheckBox;

    const p1, 0x7f08003b

    .line 56
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->checkWhiteCastleLong:Landroid/widget/CheckBox;

    const p1, 0x7f08003a

    .line 57
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->checkBlackCastleShort:Landroid/widget/CheckBox;

    const p1, 0x7f080039

    .line 58
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Ljwtc/android/chess/setup/SetupActivity;->checkBlackCastleLong:Landroid/widget/CheckBox;

    const p1, 0x7f020005

    const v0, 0x1090008

    .line 60
    invoke-static {p0, p1, v0}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    const v0, 0x1090009

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f080080

    .line 63
    invoke-virtual {p0, v0}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->spinnerEPFile:Landroid/widget/Spinner;

    const v1, 0x7f0e01dc

    .line 64
    invoke-virtual {p0, v1}, Ljwtc/android/chess/setup/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->spinnerEPFile:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const p1, 0x7f080031

    .line 67
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    new-instance v0, Ljwtc/android/chess/setup/SetupActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/setup/SetupActivity$1;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080030

    .line 75
    invoke-virtual {p0, p1}, Ljwtc/android/chess/setup/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 76
    new-instance v0, Ljwtc/android/chess/setup/SetupActivity$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/setup/SetupActivity$2;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->buildPieces()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FEN"

    const/4 v2, 0x0

    .line 90
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->resetBoard()V

    .line 93
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnWhite:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 95
    :cond_0
    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2, v0}, Ljwtc/chess/JNI;->initFEN(Ljava/lang/String;)Z

    .line 96
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnWhite:Landroid/widget/RadioButton;

    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2}, Ljwtc/chess/JNI;->getTurn()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnBlack:Landroid/widget/RadioButton;

    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2}, Ljwtc/chess/JNI;->getTurn()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    :goto_2
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onResume()V

    return-void
.end method

.method protected onSave()V
    .locals 9

    .line 107
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->radioTurnWhite:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 109
    iget-object v1, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1, v0}, Ljwtc/chess/JNI;->setTurn(I)V

    const/4 v1, -0x1

    .line 112
    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->spinnerEPFile:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    const/4 v7, -0x1

    goto/16 :goto_1

    :pswitch_0
    if-ne v0, v3, :cond_0

    const/16 v0, 0x17

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2f

    goto :goto_0

    :pswitch_1
    if-ne v0, v3, :cond_1

    const/16 v0, 0x16

    const/16 v1, 0x16

    goto :goto_0

    :cond_1
    const/16 v0, 0x2e

    const/16 v1, 0x2e

    goto :goto_0

    :pswitch_2
    if-ne v0, v3, :cond_2

    const/16 v0, 0x15

    const/16 v1, 0x15

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d

    const/16 v1, 0x2d

    goto :goto_0

    :pswitch_3
    if-ne v0, v3, :cond_3

    const/16 v0, 0x14

    const/16 v1, 0x14

    goto :goto_0

    :cond_3
    const/16 v0, 0x2c

    const/16 v1, 0x2c

    goto :goto_0

    :pswitch_4
    if-ne v0, v3, :cond_4

    const/16 v0, 0x13

    const/16 v1, 0x13

    goto :goto_0

    :cond_4
    const/16 v0, 0x2b

    const/16 v1, 0x2b

    goto :goto_0

    :pswitch_5
    if-ne v0, v3, :cond_5

    const/16 v0, 0x12

    const/16 v1, 0x12

    goto :goto_0

    :cond_5
    const/16 v0, 0x2a

    const/16 v1, 0x2a

    goto :goto_0

    :pswitch_6
    if-ne v0, v3, :cond_6

    const/16 v0, 0x11

    const/16 v1, 0x11

    goto :goto_0

    :cond_6
    const/16 v0, 0x29

    const/16 v1, 0x29

    goto :goto_0

    :pswitch_7
    if-ne v0, v3, :cond_7

    const/16 v0, 0x10

    const/16 v1, 0x10

    goto :goto_0

    :cond_7
    const/16 v0, 0x28

    const/16 v1, 0x28

    :goto_0
    move v7, v1

    .line 141
    :goto_1
    iget-object v2, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    .line 142
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->checkWhiteCastleLong:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 143
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->checkWhiteCastleShort:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 144
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->checkBlackCastleLong:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 145
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->checkBlackCastleShort:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const/4 v8, 0x0

    .line 141
    invoke-virtual/range {v2 .. v8}, Ljwtc/chess/JNI;->setCastlingsEPAnd50(IIIIII)V

    .line 147
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->commitBoard()V

    .line 149
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->isLegalPosition()I

    move-result v0

    if-nez v0, :cond_8

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Use illegal position?"

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002b

    .line 152
    invoke-virtual {p0, v1}, Ljwtc/android/chess/setup/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljwtc/android/chess/setup/SetupActivity$4;

    invoke-direct {v2, p0}, Ljwtc/android/chess/setup/SetupActivity$4;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0029

    .line 161
    invoke-virtual {p0, v1}, Ljwtc/android/chess/setup/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljwtc/android/chess/setup/SetupActivity$3;

    invoke-direct {v2, p0}, Ljwtc/android/chess/setup/SetupActivity$3;-><init>(Ljwtc/android/chess/setup/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    .line 168
    :cond_8
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->commitFEN()V

    .line 169
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->finish()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removePiece(I)V
    .locals 7

    .line 245
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v0

    const-string v2, " "

    const-string v3, "SetupActivity"

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePiece white "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, v1, p1}, Ljwtc/chess/JNI;->removePiece(II)V

    .line 250
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removePiece black "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, v1, p1}, Ljwtc/chess/JNI;->removePiece(II)V

    :cond_1
    return-void
.end method

.method public requestMove(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resetBoard()V
    .locals 4

    .line 230
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->reset()V

    .line 232
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    const/16 v1, 0x3c

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 233
    iget-object v0, p0, Ljwtc/android/chess/setup/SetupActivity;->jni:Ljwtc/chess/JNI;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljwtc/chess/JNI;->putPiece(III)V

    .line 235
    invoke-virtual {p0}, Ljwtc/android/chess/setup/SetupActivity;->rebuildBoard()V

    return-void
.end method
