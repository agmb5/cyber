.class public abstract Ljwtc/android/chess/activities/ChessBoardActivity;
.super Ljwtc/android/chess/activities/BaseActivity;
.source "ChessBoardActivity.java"

# interfaces
.implements Ljwtc/android/chess/services/GameListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;,
        Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;,
        Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;
    }
.end annotation


# static fields
.field public static final MODE_BLINDFOLD_HIDEPIECES:I = 0x1

.field public static final MODE_BLINDFOLD_SHOWPIECELOCATION:I = 0x2

.field public static final MODE_BLINDFOLD_SHOWPIECES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChessBoardActivity"


# instance fields
.field protected allowPremove:Z

.field protected chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

.field protected gameApi:Ljwtc/android/chess/services/GameApi;

.field protected highlightedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected jni:Ljwtc/chess/JNI;

.field private keyboardBuffer:Ljava/lang/String;

.field protected lastPosition:I

.field protected modeBlindfold:I

.field protected myClickListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;

.field protected myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

.field protected myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

.field protected premoveFrom:I

.field protected premoveTo:I

.field protected skipReturn:Z

.field protected soundCapture:I

.field protected soundCheck:I

.field protected soundMove:I

.field protected soundTickTock:I

.field protected spSound:Landroid/media/SoundPool;

.field protected textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljwtc/android/chess/activities/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    .line 54
    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveFrom:I

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveTo:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->modeBlindfold:I

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->allowPremove:Z

    .line 66
    iput-boolean v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->skipReturn:Z

    const-string v0, ""

    .line 67
    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    return-void
.end method

.method public static chessStateToR(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7f0e01bc

    return p0

    :pswitch_1
    const p0, 0x7f0e01b7

    return p0

    :pswitch_2
    const p0, 0x7f0e01b3

    return p0

    :pswitch_3
    const p0, 0x7f0e01c0

    return p0

    :pswitch_4
    const p0, 0x7f0e01b2

    return p0

    :pswitch_5
    const p0, 0x7f0e01bf

    return p0

    :pswitch_6
    const p0, 0x7f0e01b9

    return p0

    :pswitch_7
    const p0, 0x7f0e01ba

    return p0

    :pswitch_8
    const p0, 0x7f0e01bb

    return p0

    :pswitch_9
    const p0, 0x7f0e01b6

    return p0

    :pswitch_a
    const p0, 0x7f0e01b8

    return p0

    :pswitch_b
    const p0, 0x7f0e01b4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public OnMove(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnMove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChessBoardActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual/range {p0 .. p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->rebuildBoard()V

    .line 134
    iget-object v2, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    if-eqz v2, :cond_2

    .line 135
    invoke-static/range {p1 .. p1}, Ljwtc/chess/Move;->isCheck(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v3, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    iget v4, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundCheck:I

    iget v5, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    iget v6, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 137
    :cond_0
    invoke-static/range {p1 .. p1}, Ljwtc/chess/Move;->isHIT(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v3, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    iget v4, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundCapture:I

    iget v5, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    iget v6, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v10, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    iget v11, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundMove:I

    iget v12, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    iget v13, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->fVolume:F

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v16}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 143
    :cond_2
    :goto_0
    iget-object v2, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    if-eqz v2, :cond_3

    .line 144
    iget-object v3, v0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v3}, Ljwtc/chess/JNI;->getMyMoveToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljwtc/android/chess/services/TextToSpeechApi;->moveToSpeech(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public OnState()V
    .locals 2

    const-string v0, "ChessBoardActivity"

    const-string v1, "OnState"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->rebuildBoard()V

    return-void
.end method

.method public afterCreate()V
    .locals 3

    const-string v0, "ChessBoardActivity"

    const-string v1, " afterCreate"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    const v0, 0x7f0800fb

    .line 160
    invoke-virtual {p0, v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/views/ChessBoardView;

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    .line 162
    new-instance v0, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    invoke-direct {v0, p0}, Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    .line 163
    new-instance v0, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    invoke-direct {v0, p0}, Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;)V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    .line 164
    new-instance v0, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;Ljwtc/android/chess/activities/ChessBoardActivity$1;)V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myClickListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 172
    new-instance v1, Ljwtc/android/chess/views/ChessSquareView;

    invoke-direct {v1, p0, v0}, Ljwtc/android/chess/views/ChessSquareView;-><init>(Landroid/content/Context;I)V

    .line 173
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myDragListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyDragListener;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/views/ChessSquareView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 174
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myClickListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyClickListener;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/views/ChessSquareView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/views/ChessBoardView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p0}, Ljwtc/android/chess/services/GameApi;->addListener(Ljwtc/android/chess/services/GameListener;)V

    return-void
.end method

.method public emailPGN()V
    .locals 5

    .line 554
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/chess_history.pgn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v1

    .line 561
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 563
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 564
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "chess pgn"

    .line 567
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "application/x-chess-pgn"

    .line 569
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v1}, Ljwtc/android/chess/activities/ChessBoardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0e007a

    .line 573
    invoke-virtual {p0, v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/activities/ChessBoardActivity;->doToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f0e007b

    .line 577
    invoke-virtual {p0, v1}, Ljwtc/android/chess/activities/ChessBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljwtc/android/chess/activities/ChessBoardActivity;->doToast(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ex"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getPieceViewOnPosition(I)Ljwtc/android/chess/views/ChessPieceView;
    .locals 4

    .line 403
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 405
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 407
    instance-of v3, v2, Ljwtc/android/chess/views/ChessPieceView;

    if-eqz v3, :cond_0

    .line 408
    check-cast v2, Ljwtc/android/chess/views/ChessPieceView;

    .line 409
    invoke-virtual {v2}, Ljwtc/android/chess/views/ChessPieceView;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSquareAt(I)Ljwtc/android/chess/views/ChessSquareView;
    .locals 4

    .line 418
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 420
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 422
    instance-of v3, v2, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz v3, :cond_0

    .line 423
    check-cast v2, Ljwtc/android/chess/views/ChessSquareView;

    .line 424
    invoke-virtual {v2}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected hasPremoved()Z
    .locals 2

    .line 399
    iget v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInit(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 367
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljwtc/android/chess/services/TextToSpeechApi;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/TextToSpeechApi;->setDefaults()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Speech does not support US locale"

    .line 370
    invoke-virtual {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->doToast(Ljava/lang/String;)V

    .line 371
    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    goto :goto_1

    :cond_2
    const-string p1, "Speech not supported"

    .line 376
    invoke-virtual {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->doToast(Ljava/lang/String;)V

    .line 377
    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 339
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChessBoardActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/16 v4, 0x52

    if-ne p1, v4, :cond_0

    return v1

    .line 347
    :cond_0
    iget-boolean v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->skipReturn:Z

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x30

    const-string v4, ""

    if-le v0, v1, :cond_2

    const/16 v1, 0x39

    if-lt v0, v1, :cond_3

    :cond_2
    const/16 v1, 0x60

    if-le v0, v1, :cond_4

    const/16 v1, 0x69

    if-ge v0, v1, :cond_4

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    .line 354
    :cond_4
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClickFromPositionString "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-object v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    .line 360
    :cond_5
    invoke-super {p0, p1, p2}, Ljwtc/android/chess/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 9

    const-string v0, "0"

    .line 183
    invoke-super {p0}, Ljwtc/android/chess/activities/BaseActivity;->onResume()V

    .line 185
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fullScreen"

    const/4 v3, 0x1

    .line 186
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x400

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const-string v2, "tileSet"

    const-string v4, ""

    .line 190
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_1

    .line 192
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 194
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tiles/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    sput-object v6, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 199
    :cond_1
    sput-object v6, Ljwtc/android/chess/views/ChessSquareView;->bitmapPattern:Landroid/graphics/Bitmap;

    :goto_0
    const-string v2, "showCoords"

    const/4 v5, 0x0

    .line 201
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Ljwtc/android/chess/constants/ColorSchemes;->showCoords:Z

    const-string v2, "skipReturn"

    .line 203
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->skipReturn:Z

    .line 204
    iput-object v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->keyboardBuffer:Ljava/lang/String;

    :try_start_1
    const-string v2, "pieceset"

    .line 207
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Ljwtc/android/chess/constants/PieceSets;->selectedSet:I

    const-string v2, "colorscheme"

    .line 208
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljwtc/android/chess/constants/ColorSchemes;->selectedColorScheme:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChessBoardActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_1
    sput v5, Ljwtc/android/chess/constants/PieceSets;->selectedBlindfoldMode:I

    const-string v0, "moveToSpeech"

    .line 216
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Ljwtc/android/chess/services/TextToSpeechApi;

    invoke-direct {v0, p0, p0}, Ljwtc/android/chess/services/TextToSpeechApi;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    goto :goto_2

    .line 219
    :cond_2
    iput-object v6, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->textToSpeech:Ljwtc/android/chess/services/TextToSpeechApi;

    :goto_2
    const-string v0, "moveSounds"

    .line 222
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    const v1, 0x7f0d0007

    .line 224
    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundTickTock:I

    .line 225
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    const v1, 0x7f0d0006

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundCheck:I

    .line 226
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    const v1, 0x7f0d0005

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundMove:I

    .line 227
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->soundCapture:I

    goto :goto_3

    .line 229
    :cond_3
    iput-object v6, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->spSound:Landroid/media/SoundPool;

    :goto_3
    return-void
.end method

.method public rebuildBoard()V
    .locals 10

    .line 235
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->removePieces()V

    .line 236
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->removeLabels()V

    .line 238
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getState()I

    move-result v0

    .line 239
    iget-object v1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getTurn()I

    move-result v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChessBoardActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const-string v3, "+"

    const-string v4, "50"

    const-string v5, "\u00bd"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    move-object v3, v6

    goto :goto_3

    :pswitch_0
    const-string v0, "\u2713"

    const-string v2, "#"

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-ne v1, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    move-object v6, v0

    goto :goto_3

    :pswitch_1
    move-object v3, v4

    goto :goto_2

    :cond_2
    :pswitch_2
    move-object v3, v5

    :goto_2
    move-object v6, v3

    goto :goto_3

    :cond_3
    if-ne v1, v7, :cond_4

    goto :goto_3

    :cond_4
    move-object v9, v6

    move-object v6, v3

    move-object v3, v9

    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    const/16 v2, 0x40

    if-ge v1, v2, :cond_8

    .line 273
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2, v0, v1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 276
    iget-object v2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2, v7, v1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v2

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eq v2, v4, :cond_7

    .line 280
    new-instance v4, Ljwtc/android/chess/views/ChessPieceView;

    invoke-direct {v4, p0, v5, v2, v1}, Ljwtc/android/chess/views/ChessPieceView;-><init>(Landroid/content/Context;III)V

    .line 281
    iget-object v8, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->myTouchListener:Ljwtc/android/chess/activities/ChessBoardActivity$MyTouchListener;

    invoke-virtual {v4, v8}, Ljwtc/android/chess/views/ChessPieceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    iget-object v8, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v8, v4}, Ljwtc/android/chess/views/ChessBoardView;->addView(Landroid/view/View;)V

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    if-ne v5, v7, :cond_6

    if-eqz v3, :cond_6

    .line 287
    new-instance v2, Ljwtc/android/chess/views/ChessPieceLabelView;

    invoke-direct {v2, p0, v1, v5, v3}, Ljwtc/android/chess/views/ChessPieceLabelView;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 288
    iget-object v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v4, v2}, Ljwtc/android/chess/views/ChessBoardView;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_6
    if-nez v5, :cond_7

    if-eqz v6, :cond_7

    .line 290
    new-instance v2, Ljwtc/android/chess/views/ChessPieceLabelView;

    invoke-direct {v2, p0, v1, v5, v6}, Ljwtc/android/chess/views/ChessPieceLabelView;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 291
    iget-object v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v4, v2}, Ljwtc/android/chess/views/ChessBoardView;->addView(Landroid/view/View;)V

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 297
    :cond_8
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->updateSelectedSquares()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public requestMove(II)Z
    .locals 5

    .line 70
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ljwtc/chess/board/BoardMembers;->ROW_TURN:[[I

    aget-object v0, v0, v1

    aget v0, v0, p1

    if-ne v0, v3, :cond_0

    sget-object v0, Ljwtc/chess/board/BoardMembers;->ROW_TURN:[[I

    aget-object v0, v0, v1

    aget v0, v0, p2

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    .line 74
    invoke-virtual {v0, v4, p1}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljwtc/chess/board/BoardMembers;->ROW_TURN:[[I

    aget-object v0, v0, v4

    aget v0, v0, p1

    if-ne v0, v3, :cond_2

    sget-object v0, Ljwtc/chess/board/BoardMembers;->ROW_TURN:[[I

    aget-object v0, v0, v4

    aget v0, v0, p2

    if-ne v0, v2, :cond_2

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e01df

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    new-instance v3, Ljwtc/android/chess/activities/ChessBoardActivity$1;

    invoke-direct {v3, p0, p1, p2}, Ljwtc/android/chess/activities/ChessBoardActivity$1;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;II)V

    invoke-virtual {v2, v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    .line 99
    :cond_2
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1, p2}, Ljwtc/chess/JNI;->isAmbiguousCastle(II)I

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e01c3

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e002b

    .line 103
    new-instance v3, Ljwtc/android/chess/activities/ChessBoardActivity$2;

    invoke-direct {v3, p0, p1, p2}, Ljwtc/android/chess/activities/ChessBoardActivity$2;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e0029

    .line 109
    new-instance v3, Ljwtc/android/chess/activities/ChessBoardActivity$3;

    invoke-direct {v3, p0, p1, p2}, Ljwtc/android/chess/activities/ChessBoardActivity$3;-><init>(Ljwtc/android/chess/activities/ChessBoardActivity;II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    .line 126
    :cond_3
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1, p2}, Ljwtc/android/chess/services/GameApi;->requestMove(II)Z

    move-result p1

    return p1
.end method

.method protected resetPremove()V
    .locals 1

    const/4 v0, -0x1

    .line 390
    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveFrom:I

    .line 391
    iput v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveTo:I

    .line 392
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->rebuildBoard()V

    .line 395
    invoke-virtual {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->updateSelectedSquares()V

    return-void
.end method

.method protected setPremove(II)V
    .locals 1

    .line 382
    iput p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveFrom:I

    .line 383
    iput p2, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->premoveTo:I

    .line 384
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object p1, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateSelectedSquares()V
    .locals 6

    .line 301
    iget-object v0, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessBoardView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 303
    iget-object v3, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    invoke-virtual {v3, v2}, Ljwtc/android/chess/views/ChessBoardView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 305
    instance-of v4, v3, Ljwtc/android/chess/views/ChessSquareView;

    if-eqz v4, :cond_2

    .line 306
    check-cast v3, Ljwtc/android/chess/views/ChessSquareView;

    .line 307
    invoke-virtual {v3}, Ljwtc/android/chess/views/ChessSquareView;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    invoke-virtual {v3}, Ljwtc/android/chess/views/ChessSquareView;->getPos()I

    move-result v4

    iget v5, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->lastPosition:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessSquareView;->setSelected(Z)V

    .line 311
    :cond_1
    iget-object v4, p0, Ljwtc/android/chess/activities/ChessBoardActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessSquareView;->setHighlighted(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
