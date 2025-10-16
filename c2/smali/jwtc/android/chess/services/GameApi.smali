.class public Ljwtc/android/chess/services/GameApi;
.super Ljava/lang/Object;
.source "GameApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameApi"

.field private static _patAnnot:Ljava/util/regex/Pattern;

.field private static _patCastling:Ljava/util/regex/Pattern;

.field private static _patMove:Ljava/util/regex/Pattern;

.field private static _patNum:Ljava/util/regex/Pattern;


# instance fields
.field protected _arrPGN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/chess/PGNEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected _mapPGNHead:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected jni:Ljwtc/chess/JNI;

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/android/chess/services/GameListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "(\\d+)\\."

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/services/GameApi;->_patNum:Ljava/util/regex/Pattern;

    const-string v0, "\\{([^\\{]*)\\}"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/services/GameApi;->_patAnnot:Ljava/util/regex/Pattern;

    const-string v0, "(K|Q|R|B|N)?(a|b|c|d|e|f|g|h)?(1|2|3|4|5|6|7|8)?(x)?(a|b|c|d|e|f|g|h)(1|2|3|4|5|6|7|8)(=Q|=R|=B|=N)?(\\+|#)?([\\?\\!]*)?[\\s]*"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/services/GameApi;->_patMove:Ljava/util/regex/Pattern;

    const-string v0, "(O\\-O|O\\-O\\-O)(\\+|#)?([\\?\\!]*)?"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljwtc/android/chess/services/GameApi;->_patCastling:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/services/GameApi;->listeners:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    .line 44
    invoke-virtual {v0}, Ljwtc/chess/JNI;->reset()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    return-void
.end method

.method private loadPGNHead(Ljava/lang/String;)V
    .locals 10

    const-string v0, "[\\r\\n]+"

    const-string v1, " "

    .line 378
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    .line 379
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\[(\\w+) \"(.*)\"\\]"

    .line 385
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 388
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 389
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3

    .line 393
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    const-string v4, "]"

    .line 394
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 403
    :cond_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 407
    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 409
    iget-object v6, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FEN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 411
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Ljwtc/android/chess/services/GameApi;->initFEN(Ljava/lang/String;Z)Z

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private loadPGNMoves(Ljava/lang/String;)Z
    .locals 12

    .line 451
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "[\\r\\n\\t]+"

    const-string v1, " "

    .line 453
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-direct {p0, v0}, Ljwtc/android/chess/services/GameApi;->removeDoubleSpaces(Ljava/lang/StringBuffer;)V

    :goto_0
    const/4 p1, 0x0

    .line 463
    :try_start_0
    invoke-direct {p0, v0}, Ljwtc/android/chess/services/GameApi;->removeComment(Ljava/lang/StringBuffer;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-direct {p0, v0}, Ljwtc/android/chess/services/GameApi;->removeDoubleSpaces(Ljava/lang/StringBuffer;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\$\\d+"

    const-string v3, ""

    .line 499
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 511
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_c

    .line 512
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "."

    .line 513
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-lez v7, :cond_c

    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    const/4 v11, -0x1

    if-ne v9, v10, :cond_2

    const-string v7, "]"

    .line 518
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_1

    goto/16 :goto_6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 522
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 525
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_4

    const-string v7, "}"

    .line 526
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_3

    goto/16 :goto_6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 530
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    if-lez v8, :cond_6

    if-ge v8, v7, :cond_6

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v9, v8, 0x3

    if-le v7, v9, :cond_5

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "..."

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v9

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 539
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v7, v8

    goto :goto_3

    .line 543
    :cond_6
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :goto_3
    const-string v8, ".."

    .line 549
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    .line 552
    :cond_7
    sget-object v8, Ljwtc/android/chess/services/GameApi;->_patNum:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 553
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 554
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 560
    :cond_8
    sget-object v8, Ljwtc/android/chess/services/GameApi;->_patAnnot:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 561
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 562
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 565
    :cond_9
    sget-object v8, Ljwtc/android/chess/services/GameApi;->_patMove:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 566
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_a

    .line 568
    invoke-direct {p0, v4, v8, v10, v6}, Ljwtc/android/chess/services/GameApi;->requestMove(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_4
    move-object v6, v3

    goto :goto_5

    .line 575
    :cond_a
    sget-object v8, Ljwtc/android/chess/services/GameApi;->_patCastling:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 576
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 578
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v10, v8, v6}, Ljwtc/android/chess/services/GameApi;->requestMove(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_b
    :goto_5
    move v4, v7

    goto/16 :goto_1

    .line 591
    :cond_c
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 592
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0, v6}, Ljwtc/android/chess/services/GameApi;->setAnnotation(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    return v2

    :catch_0
    const-string v0, "GameApi"

    const-string v1, "Error loading PGN"

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_1
    move-exception v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadPGNMoves"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private move(ILjava/lang/String;Z)Z
    .locals 2

    .line 249
    iget-object p3, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p3, p1}, Ljwtc/chess/JNI;->move(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 252
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p1

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getMyMoveToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getMyMove()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Ljwtc/android/chess/services/GameApi;->addPGNEntry(ILjava/lang/String;Ljava/lang/String;I)V

    return p3
.end method

.method private removeComment(Ljava/lang/StringBuffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "("

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 421
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :goto_0
    move v4, v3

    move v3, v1

    move v1, v4

    if-ltz v1, :cond_0

    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 424
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    if-gt v3, v2, :cond_1

    const/4 v0, 0x1

    add-int/2addr v2, v0

    .line 430
    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return v0

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open bracket after closing bracket: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-gez v1, :cond_4

    if-gez v2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 437
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No opening bracket for comment"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "No closing bracket for comment"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeDoubleSpaces(Ljava/lang/StringBuffer;)V
    .locals 3

    const-string v0, "  "

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 445
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized requestMove(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v4, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v4}, Ljwtc/chess/JNI;->getMoveArraySize()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1a

    .line 266
    iget-object v8, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v8, v0}, Ljwtc/chess/JNI;->getMoveArrayAt(I)I

    move-result v8

    .line 267
    invoke-static {v8}, Ljwtc/chess/Move;->isOO(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "O-O"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 270
    :goto_1
    invoke-static {v8}, Ljwtc/chess/Move;->isOOO(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "O-O-O"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    if-eqz v9, :cond_4

    const-string v0, ""

    .line 274
    invoke-direct {v1, v8, v0, v7}, Ljwtc/android/chess/services/GameApi;->move(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    sub-int/2addr v0, v5

    if-ltz v0, :cond_2

    .line 277
    invoke-virtual {v1, v0, v3}, Ljwtc/android/chess/services/GameApi;->setAnnotation(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_2
    monitor-exit p0

    return v6

    .line 280
    :cond_3
    monitor-exit p0

    return v7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_5
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    .line 288
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 289
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    .line 290
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    const/4 v12, 0x5

    .line 291
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    .line 292
    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x7

    .line 293
    invoke-virtual {v0, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const/16 v12, 0x8

    .line 294
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    const/16 v12, 0x9

    .line 295
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_6

    .line 299
    monitor-exit p0

    return v7

    :cond_6
    if-nez v14, :cond_7

    .line 302
    monitor-exit p0

    return v7

    :cond_7
    if-eqz v2, :cond_d

    :try_start_2
    const-string v0, "K"

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v12, 0x5

    goto :goto_2

    :cond_8
    const-string v0, "Q"

    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v12, 0x4

    goto :goto_2

    :cond_9
    const-string v0, "R"

    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v12, 0x3

    goto :goto_2

    :cond_a
    const-string v0, "B"

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v12, 0x2

    goto :goto_2

    :cond_b
    const-string v0, "N"

    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_c

    const/4 v12, 0x1

    goto :goto_2

    .line 318
    :cond_c
    monitor-exit p0

    return v7

    :cond_d
    const/4 v12, 0x0

    .line 322
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljwtc/chess/Pos;->fromString(Ljava/lang/String;)I

    move-result v0

    .line 323
    iget-object v2, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2}, Ljwtc/chess/JNI;->getTurn()I

    move-result v2

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v4, :cond_1a

    .line 327
    iget-object v14, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v14, v13}, Ljwtc/chess/JNI;->getMoveArrayAt(I)I

    move-result v14

    .line 328
    invoke-static {v14}, Ljwtc/chess/Move;->getFrom(I)I

    move-result v7

    .line 329
    invoke-static {v14}, Ljwtc/chess/Move;->getTo(I)I

    move-result v6

    if-eqz v15, :cond_13

    .line 332
    invoke-static {v14}, Ljwtc/chess/Move;->getPromotionPiece(I)I

    move-result v8

    const-string v5, "=Q"

    .line 333
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eq v8, v11, :cond_11

    :cond_e
    const-string v5, "=R"

    .line 334
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x3

    if-eq v8, v5, :cond_11

    :cond_f
    const-string v5, "=B"

    .line 335
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x2

    if-eq v8, v5, :cond_11

    :cond_10
    const-string v5, "=N"

    .line 336
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    if-ne v8, v5, :cond_12

    :cond_11
    const/4 v5, 0x1

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_13

    goto :goto_8

    .line 340
    :cond_13
    iget-object v5, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v5, v2, v7}, Ljwtc/chess/JNI;->pieceAt(II)I

    move-result v5

    if-ne v5, v12, :cond_16

    if-ne v6, v0, :cond_16

    if-eqz v9, :cond_14

    .line 349
    invoke-static {v7}, Ljwtc/chess/Pos;->colToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_5

    :cond_14
    if-eqz v10, :cond_15

    .line 352
    invoke-static {v7}, Ljwtc/chess/Pos;->rowToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_19

    const-string v0, ""

    const/4 v2, 0x0

    .line 360
    invoke-direct {v1, v14, v0, v2}, Ljwtc/android/chess/services/GameApi;->move(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 361
    iget-object v0, v1, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    const/4 v5, 0x3

    sub-int/2addr v0, v5

    if-ltz v0, :cond_17

    .line 363
    invoke-virtual {v1, v0, v3}, Ljwtc/android/chess/services/GameApi;->setAnnotation(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    :cond_17
    monitor-exit p0

    const/4 v6, 0x1

    return v6

    .line 366
    :cond_18
    monitor-exit p0

    :goto_7
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_8
    const/4 v5, 0x3

    const/4 v6, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_3

    .line 372
    :cond_1a
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addListener(Ljwtc/android/chess/services/GameListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPGNEntry(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    :goto_0
    if-ltz p1, :cond_0

    .line 607
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 608
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 610
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    new-instance v0, Ljwtc/chess/PGNEntry;

    invoke-direct {v0, p2, p3, p4}, Ljwtc/chess/PGNEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchMove(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/services/GameListener;

    .line 235
    invoke-interface {v1, p1}, Ljwtc/android/chess/services/GameListener;->OnMove(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchState()V
    .locals 2

    .line 242
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/services/GameListener;

    .line 243
    invoke-interface {v1}, Ljwtc/android/chess/services/GameListener;->OnState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public exportFullPGN()Ljava/lang/String;
    .locals 12

    const-string v0, "Event"

    const-string v1, "Site"

    const-string v2, "Date"

    const-string v3, "Round"

    const-string v4, "White"

    const-string v5, "Black"

    const-string v6, "Result"

    const-string v7, "EventDate"

    const-string v8, "Variant"

    const-string v9, "Setup"

    const-string v10, "FEN"

    const-string v11, "PlyCount"

    .line 628
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 633
    aget-object v3, v0, v2

    .line 634
    iget-object v4, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->exportMovesPGN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected exportMovesPGN()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 644
    invoke-virtual {p0, v0}, Ljwtc/android/chess/services/GameApi;->exportMovesPGNFromPly(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exportMovesPGNFromPly(I)Ljava/lang/String;
    .locals 4

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-string v0, ""

    move v1, p1

    .line 656
    :goto_0
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sub-int v2, v1, p1

    .line 657
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/chess/PGNEntry;

    iget-object v0, v0, Ljwtc/chess/PGNEntry;->_sMove:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/chess/PGNEntry;

    iget-object v2, v2, Ljwtc/chess/PGNEntry;->_sAnnotation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/chess/PGNEntry;

    iget-object v0, v0, Ljwtc/chess/PGNEntry;->_sAnnotation:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getBlack()Ljava/lang/String;
    .locals 1

    const-string v0, "Black"

    .line 694
    invoke-virtual {p0, v0}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    const-string v0, "Date"

    .line 698
    invoke-virtual {p0, v0}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Ljwtc/android/chess/helpers/PGNHelper;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFromOfNextMove()I
    .locals 2

    .line 614
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    .line 615
    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    if-lez v0, :cond_0

    .line 616
    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/chess/PGNEntry;

    .line 617
    iget v0, v0, Ljwtc/chess/PGNEntry;->_move:I

    invoke-static {v0}, Ljwtc/chess/Move;->getFrom(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMyPlayerName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "White"

    goto :goto_0

    :cond_0
    const-string p1, "Black"

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOpponentPlayerName(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "White"

    goto :goto_0

    :cond_0
    const-string p1, "Black"

    .line 58
    :goto_0
    invoke-virtual {p0, p1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPGNEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljwtc/chess/PGNEntry;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPGNSize()I
    .locals 1

    .line 138
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getWhite()Ljava/lang/String;
    .locals 1

    const-string v0, "White"

    .line 690
    invoke-virtual {p0, v0}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFEN(Ljava/lang/String;Z)Z
    .locals 3

    .line 177
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1}, Ljwtc/chess/JNI;->initFEN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 180
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 181
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v0, "Event"

    const-string v1, "?"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v0, "Site"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v0, "Round"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "White"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Black"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v0, "Setup"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v0, "FEN"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object p1, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 192
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized isLegalMove(II)Z
    .locals 3

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-static {p1, p2}, Ljwtc/chess/Move;->makeMove(II)I

    move-result p1

    .line 143
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getMoveArraySize()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 146
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v2, v1}, Ljwtc/chess/JNI;->getMoveArrayAt(I)I

    move-result v2

    .line 147
    invoke-static {p1, v2}, Ljwtc/chess/Move;->equalPositions(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 148
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public jumptoMove(I)V
    .locals 4

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jumptoMove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 121
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    if-lt p1, v0, :cond_0

    :goto_0
    if-lt p1, v0, :cond_1

    .line 124
    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/chess/PGNEntry;

    iget v2, v2, Ljwtc/chess/PGNEntry;->_move:I

    invoke-virtual {v1, v2}, Ljwtc/chess/JNI;->move(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_1

    .line 129
    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->undo()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    :cond_2
    return-void
.end method

.method public loadPGN(Ljava/lang/String;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->newGame()V

    .line 222
    invoke-direct {p0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGNHead(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGNMoves(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public move(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    .line 101
    invoke-direct {p0, p1, v0, v1}, Ljwtc/android/chess/services/GameApi;->move(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Ljwtc/android/chess/services/GameApi;->dispatchMove(I)V

    :cond_0
    return-void
.end method

.method public newGame()V
    .locals 6

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM.dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 160
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v3, "Event"

    const-string v4, "?"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v3, "Site"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v3, "Round"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "White"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Black"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v2, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->newGame()V

    .line 171
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    return-void
.end method

.method public newGameRandomFischer(I)I
    .locals 4

    .line 200
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1}, Ljwtc/chess/JNI;->initRandomFisher(I)I

    move-result p1

    .line 202
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 203
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v1, "Event"

    const-string v2, "?"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v1, "Site"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v1, "Round"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "White"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v1, "Variant"

    const-string v2, "Fischerandom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    const-string v1, "Setup"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FEN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    return p1
.end method

.method public nextMove()V
    .locals 1

    .line 114
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    return-void
.end method

.method public removeListener(Ljwtc/android/chess/services/GameListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestMove(II)Z
    .locals 3

    const-string v0, "GameApi"

    const-string v1, "requestMove"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->isEnded()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1, p2}, Ljwtc/chess/JNI;->requestMove(II)I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 74
    :cond_1
    iget-object p1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getMyMove()I

    move-result p1

    .line 76
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getMyMoveToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, p2, v1, v2, p1}, Ljwtc/android/chess/services/GameApi;->addPGNEntry(ILjava/lang/String;Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p0, p1}, Ljwtc/android/chess/services/GameApi;->dispatchMove(I)V

    return v0
.end method

.method public requestMoveCastle(II)Z
    .locals 3

    .line 84
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->isEnded()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0, p1, p2}, Ljwtc/chess/JNI;->doCastleMove(II)I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 91
    :cond_1
    iget-object p1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getMyMove()I

    move-result p1

    .line 93
    iget-object p2, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p2}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iget-object v1, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getMyMoveToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, p2, v1, v2, p1}, Ljwtc/android/chess/services/GameApi;->addPGNEntry(ILjava/lang/String;Ljava/lang/String;I)V

    .line 95
    invoke-virtual {p0, p1}, Ljwtc/android/chess/services/GameApi;->dispatchMove(I)V

    return v0
.end method

.method public setAnnotation(ILjava/lang/String;)V
    .locals 1

    .line 623
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 624
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_arrPGN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljwtc/chess/PGNEntry;

    iput-object p2, p1, Ljwtc/chess/PGNEntry;->_sAnnotation:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDateLong(J)V
    .locals 1

    .line 678
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 679
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 680
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 681
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy.MM.dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Date"

    invoke-virtual {p0, p2, p1}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 674
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->_mapPGNHead:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public undoMove()V
    .locals 1

    .line 109
    iget-object v0, p0, Ljwtc/android/chess/services/GameApi;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->undo()V

    .line 110
    invoke-virtual {p0}, Ljwtc/android/chess/services/GameApi;->dispatchState()V

    return-void
.end method
