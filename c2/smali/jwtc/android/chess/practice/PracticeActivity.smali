.class public Ljwtc/android/chess/practice/PracticeActivity;
.super Ljwtc/android/chess/activities/ChessBoardActivity;
.source "PracticeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PracticeActivity"


# instance fields
.field private buttonNext:Landroid/widget/ImageButton;

.field private buttonShow:Landroid/widget/Button;

.field private currentPos:I

.field private cursor:Landroid/database/Cursor;

.field private imgStatus:Landroid/widget/ImageView;

.field private isPlaying:Z

.field private layoutTurn:Landroid/widget/TableLayout;

.field protected m_timerHandler:Landroid/os/Handler;

.field private playTicks:I

.field private switchTurn:Landroid/widget/ViewSwitcher;

.field private ticks:I

.field private timer:Ljava/util/Timer;

.field private totalPuzzles:I

.field private tvPracticeAvgTime:Landroid/widget/TextView;

.field private tvPracticeMove:Landroid/widget/TextView;

.field private tvPracticeTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;-><init>()V

    .line 50
    new-instance v0, Ljwtc/android/chess/practice/PracticeActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/practice/PracticeActivity$1;-><init>(Ljwtc/android/chess/practice/PracticeActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->m_timerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/practice/PracticeActivity;I)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->formatTime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Ljwtc/android/chess/practice/PracticeActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$1108(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 2

    .line 35
    iget v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->ticks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->ticks:I

    return v0
.end method

.method static synthetic access$1200(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->playTicks:I

    return p0
.end method

.method static synthetic access$1208(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 2

    .line 35
    iget v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->playTicks:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->playTicks:I

    return v0
.end method

.method static synthetic access$200(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$300(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$400(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$500(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$600(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonNext:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$700(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/Button;
    .locals 0

    .line 35
    iget-object p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonShow:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$800(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    return p0
.end method

.method static synthetic access$808(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 2

    .line 35
    iget v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    return v0
.end method

.method static synthetic access$900(Ljwtc/android/chess/practice/PracticeActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Ljwtc/android/chess/practice/PracticeActivity;->totalPuzzles:I

    return p0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 267
    div-int/lit8 v1, p1, 0x3c

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected loadPuzzles()V
    .locals 9

    .line 177
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "practiceTicks"

    const/4 v2, 0x0

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->ticks:I

    .line 180
    iput v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->playTicks:I

    const-string v1, "practicePos"

    .line 182
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    .line 184
    sget-object v4, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PRACTICES:Landroid/net/Uri;

    sget-object v5, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Ljwtc/android/chess/practice/PracticeActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->totalPuzzles:I

    if-lez v0, :cond_1

    .line 190
    iget v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    .line 191
    iput v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    .line 193
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->startPuzzle()V

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-class v1, Ljwtc/android/chess/tools/ImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "mode"

    const/4 v2, 0x3

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0, v2}, Ljwtc/android/chess/practice/PracticeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b005b

    .line 97
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->setContentView(I)V

    .line 99
    new-instance p1, Ljwtc/android/chess/practice/PracticeApi;

    invoke-direct {p1}, Ljwtc/android/chess/practice/PracticeApi;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 101
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->afterCreate()V

    const p1, 0x7f08005e

    .line 103
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->layoutTurn:Landroid/widget/TableLayout;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    const p1, 0x7f0800a3

    .line 106
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeMove:Landroid/widget/TextView;

    const p1, 0x7f0800a4

    .line 107
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeTime:Landroid/widget/TextView;

    const p1, 0x7f0800a2

    .line 108
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeAvgTime:Landroid/widget/TextView;

    const p1, 0x7f080051

    .line 110
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    const p1, 0x7f080050

    .line 112
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->imgStatus:Landroid/widget/ImageView;

    const p1, 0x7f080026

    .line 114
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonShow:Landroid/widget/Button;

    const p1, 0x7f080025

    .line 115
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonNext:Landroid/widget/ImageButton;

    .line 117
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonShow:Landroid/widget/Button;

    new-instance v0, Ljwtc/android/chess/practice/PracticeActivity$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/practice/PracticeActivity$2;-><init>(Ljwtc/android/chess/practice/PracticeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonNext:Landroid/widget/ImageButton;

    new-instance v0, Ljwtc/android/chess/practice/PracticeActivity$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/practice/PracticeActivity$3;-><init>(Ljwtc/android/chess/practice/PracticeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 162
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onPause()V

    .line 164
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    .line 168
    iput-boolean v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    .line 170
    iget v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    const-string v2, "practicePos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->ticks:I

    const-string v2, "practiceTicks"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 146
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onResume()V

    const-string v0, "PracticeActivity"

    const-string v1, "onResume"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->layoutTurn:Landroid/widget/TableLayout;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getDark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 151
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeTime:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeMove:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    .line 155
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->scheduleTimer()V

    .line 157
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->loadPuzzles()V

    return-void
.end method

.method public requestMove(II)Z
    .locals 4

    .line 63
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v0

    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const-string p1, "Finished position"

    .line 64
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->setMessage(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->rebuildBoard()V

    return v3

    .line 68
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNEntries()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/chess/PGNEntry;

    iget v0, v0, Ljwtc/chess/PGNEntry;->_move:I

    .line 69
    invoke-static {p1, p2}, Ljwtc/chess/Move;->makeMove(II)I

    move-result v1

    .line 71
    invoke-static {v0, v1}, Ljwtc/chess/Move;->equalPositions(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget-object p2, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 74
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result p1

    iget-object p2, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    sub-int/2addr p2, v2

    if-ne p1, p2, :cond_1

    .line 76
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->imgStatus:Landroid/widget/ImageView;

    const p2, 0x7f070082

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "Correct!"

    .line 77
    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->setMessage(Ljava/lang/String;)V

    .line 78
    iput-boolean v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    .line 79
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonNext:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 80
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->buttonShow:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget-object p2, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    :goto_0
    return v2

    .line 87
    :cond_2
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->imgStatus:Landroid/widget/ImageView;

    const v2, 0x7f070088

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljwtc/chess/Move;->toDbgString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1, p1, p2}, Ljwtc/android/chess/services/GameApi;->isLegalMove(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, " is not expected"

    goto :goto_1

    :cond_3
    const-string p1, " is an illegal move"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/practice/PracticeActivity;->setMessage(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljwtc/android/chess/practice/PracticeActivity;->rebuildBoard()V

    return v3
.end method

.method protected scheduleTimer()V
    .locals 6

    .line 244
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->timer:Ljava/util/Timer;

    .line 245
    new-instance v1, Ljwtc/android/chess/practice/PracticeActivity$4;

    invoke-direct {v1, p0}, Ljwtc/android/chess/practice/PracticeActivity$4;-><init>(Ljwtc/android/chess/practice/PracticeActivity;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeMove:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeMove:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected startPuzzle()V
    .locals 6

    .line 204
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->cursor:Landroid/database/Cursor;

    iget v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Ljwtc/android/chess/practice/PracticeActivity;->isPlaying:Z

    const/4 v1, 0x0

    .line 206
    iput v1, p0, Ljwtc/android/chess/practice/PracticeActivity;->playTicks:I

    .line 208
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->cursor:Landroid/database/Cursor;

    const-string v3, "PGN"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PracticeActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    .line 214
    iget-object v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v3, v1}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljwtc/android/chess/practice/PracticeActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v5}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " moves from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " turn "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2}, Ljwtc/chess/JNI;->getTurn()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2}, Ljwtc/chess/JNI;->getTurn()I

    move-result v2

    .line 219
    iget-object v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessBoardView;->setRotated(Z)V

    .line 221
    iget-object v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeMove:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->switchTurn:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 229
    :goto_1
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->imgStatus:Landroid/widget/ImageView;

    const v3, 0x7f070083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    iget v2, p0, Ljwtc/android/chess/practice/PracticeActivity;->ticks:I

    int-to-float v2, v2

    iget v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->currentPos:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 232
    iget-object v3, p0, Ljwtc/android/chess/practice/PracticeActivity;->tvPracticeAvgTime:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "%.1f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
