.class public Ljwtc/android/chess/puzzle/PuzzleActivity;
.super Ljwtc/android/chess/activities/ChessBoardActivity;
.source "PuzzleActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PuzzleActivity"


# instance fields
.field private butNext:Landroid/widget/ImageButton;

.field private butPrev:Landroid/widget/ImageButton;

.field private currentPosition:I

.field private cursor:Landroid/database/Cursor;

.field private imgStatus:Landroid/widget/ImageView;

.field private layoutTurn:Landroid/widget/TableLayout;

.field private seekBar:Landroid/widget/SeekBar;

.field private switchTurn:Landroid/widget/ViewSwitcher;

.field private totalPuzzles:I

.field private tvPuzzleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/puzzle/PuzzleActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    return p0
.end method

.method static synthetic access$008(Ljwtc/android/chess/puzzle/PuzzleActivity;)I
    .locals 2

    .line 24
    iget v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$010(Ljwtc/android/chess/puzzle/PuzzleActivity;)I
    .locals 2

    .line 24
    iget v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$100(Ljwtc/android/chess/puzzle/PuzzleActivity;)I
    .locals 0

    .line 24
    iget p0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->totalPuzzles:I

    return p0
.end method


# virtual methods
.method protected loadPuzzles()V
    .locals 8

    const-string v0, "PuzzleActivity"

    const-string v1, "loadPuzzles"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    sget-object v3, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PUZZLES:Landroid/net/Uri;

    sget-object v4, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljwtc/android/chess/puzzle/PuzzleActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->cursor:Landroid/database/Cursor;

    const-string v2, "puzzlePos"

    const/4 v3, 0x0

    .line 133
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->totalPuzzles:I

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalPuzzles "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->totalPuzzles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->totalPuzzles:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 143
    iget v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 144
    iput v3, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    .line 147
    :cond_0
    iget-object v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->seekBar:Landroid/widget/SeekBar;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 148
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->startPuzzle()V

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-class v2, Ljwtc/android/chess/tools/ImportActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "mode"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string v1, "Cursor is null"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005c

    .line 65
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->setContentView(I)V

    .line 67
    new-instance p1, Ljwtc/android/chess/puzzle/PuzzleApi;

    invoke-direct {p1}, Ljwtc/android/chess/puzzle/PuzzleApi;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 69
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->afterCreate()V

    const p1, 0x7f08005e

    .line 71
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->layoutTurn:Landroid/widget/TableLayout;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    .line 74
    iput p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->totalPuzzles:I

    const p1, 0x7f080078

    .line 75
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->seekBar:Landroid/widget/SeekBar;

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f0800a5

    .line 78
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->tvPuzzleText:Landroid/widget/TextView;

    const p1, 0x7f080051

    .line 79
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    const p1, 0x7f080050

    .line 81
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->imgStatus:Landroid/widget/ImageView;

    const p1, 0x7f08002a

    .line 83
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->butPrev:Landroid/widget/ImageButton;

    .line 84
    new-instance v0, Ljwtc/android/chess/puzzle/PuzzleActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/puzzle/PuzzleActivity$1;-><init>(Ljwtc/android/chess/puzzle/PuzzleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080029

    .line 93
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->butNext:Landroid/widget/ImageButton;

    .line 94
    new-instance v0, Ljwtc/android/chess/puzzle/PuzzleActivity$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/puzzle/PuzzleActivity$2;-><init>(Ljwtc/android/chess/puzzle/PuzzleActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 118
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onPause()V

    .line 120
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    iget v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    const-string v2, "puzzlePos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 220
    iput p2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    .line 221
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->startPuzzle()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "PuzzleActivity"

    const-string v1, "onResume"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->layoutTurn:Landroid/widget/TableLayout;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getDark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 109
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->tvPuzzleText:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->loadPuzzles()V

    .line 113
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onResume()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public requestMove(II)Z
    .locals 3

    .line 38
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v0

    iget-object v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const v0, 0x7f0e0196

    .line 39
    invoke-virtual {p0, v0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->setMessage(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1, p2}, Ljwtc/android/chess/services/GameApi;->requestMove(II)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNEntries()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/chess/PGNEntry;

    iget v0, v0, Ljwtc/chess/PGNEntry;->_move:I

    .line 43
    invoke-static {p1, p2}, Ljwtc/chess/Move;->makeMove(II)I

    move-result v1

    .line 45
    invoke-static {v0, v1}, Ljwtc/chess/Move;->equalPositions(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget-object p2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 47
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->imgStatus:Landroid/widget/ImageView;

    const p2, 0x7f070082

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, ""

    .line 48
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->setMessage(Ljava/lang/String;)V

    return v2

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljwtc/chess/Move;->toDbgString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1, p1, p2}, Ljwtc/android/chess/services/GameApi;->isLegalMove(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0e019a

    goto :goto_0

    :cond_2
    const p1, 0x7f0e0198

    :goto_0
    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/puzzle/PuzzleActivity;->setMessage(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->imgStatus:Landroid/widget/ImageView;

    const p2, 0x7f070088

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    invoke-virtual {p0}, Ljwtc/android/chess/puzzle/PuzzleActivity;->rebuildBoard()V

    const/4 p1, 0x0

    return p1
.end method

.method public setMessage(I)V
    .locals 1

    .line 214
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->tvPuzzleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->tvPuzzleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected startPuzzle()V
    .locals 5

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPuzzle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PuzzleActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->cursor:Landroid/database/Cursor;

    iget v3, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->cursor:Landroid/database/Cursor;

    const-string v3, "PGN"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1, v0}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    .line 168
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 170
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getTurn()I

    move-result v0

    .line 171
    iget-object v2, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Ljwtc/android/chess/views/ChessBoardView;->setRotated(Z)V

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_1

    .line 176
    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 179
    :goto_1
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 180
    iget v1, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 183
    :cond_2
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getWhite()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "?"

    .line 187
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_2
    iget-object v0, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->tvPuzzleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ljwtc/android/chess/puzzle/PuzzleActivity;->currentPosition:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateGUI()V
    .locals 0

    return-void
.end method
