.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.super Ljava/lang/Object;
.source "PixmapPacker.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    }
.end annotation


# static fields
.field static indexPattern:Ljava/util/regex/Pattern;


# instance fields
.field alphaThreshold:I

.field private c:Lcom/badlogic/gdx/graphics/Color;

.field disposed:Z

.field duplicateBorder:Z

.field packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

.field packToTexture:Z

.field padding:I

.field pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field pageHeight:I

.field pageWidth:I

.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation
.end field

.field stripWhitespaceX:Z

.field stripWhitespaceY:Z

.field transparentColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(.+)_(\\d+)$"

    .line 114
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZ)V
    .locals 9

    .line 119
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    .line 125
    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    return-void
.end method

.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZZZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    .line 111
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 817
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    .line 138
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    .line 140
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 141
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    .line 142
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    .line 143
    iput-boolean p6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    .line 144
    iput-boolean p7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    .line 145
    iput-object p8, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    return-void
.end method

.method private getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I
    .locals 16

    move-object/from16 v0, p2

    .line 761
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    add-int/lit8 v10, v3, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 764
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 765
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    add-int/lit8 v5, v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 770
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v7, v12, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 771
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    move v15, v3

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    add-int/lit8 v5, v14, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v6, v1

    .line 774
    invoke-direct/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    add-int/lit8 v7, v15, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v10

    .line 775
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    const/4 v1, 0x0

    if-nez v11, :cond_2

    if-nez v14, :cond_2

    if-nez v12, :cond_2

    if-nez v15, :cond_2

    return-object v1

    :cond_2
    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v11, :cond_3

    if-nez v14, :cond_3

    const/4 v5, -0x1

    const/4 v11, -0x1

    goto :goto_2

    :cond_3
    if-lez v11, :cond_4

    add-int/lit8 v11, v11, -0x1

    .line 789
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v14, v2

    sub-int/2addr v5, v14

    goto :goto_2

    .line 792
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_2
    if-nez v12, :cond_5

    if-nez v15, :cond_5

    const/4 v12, -0x1

    goto :goto_3

    :cond_5
    if-lez v12, :cond_6

    add-int/lit8 v12, v12, -0x1

    .line 801
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v15, v2

    sub-int/2addr v4, v15

    goto :goto_3

    .line 804
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    const/4 v6, 0x4

    new-array v6, v6, [I

    aput v11, v6, v13

    aput v5, v6, v2

    aput v12, v6, v3

    const/4 v2, 0x3

    aput v4, v6, v2

    if-eqz v0, :cond_7

    .line 810
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    :cond_7
    return-object v6
.end method

.method private getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    if-eqz p5, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    if-eqz p5, :cond_1

    .line 822
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    :goto_1
    const/16 v3, 0xff

    const/4 v4, 0x0

    if-eqz p4, :cond_2

    const/16 v5, 0xff

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eq v1, v2, :cond_7

    if-eqz p5, :cond_3

    move p2, v1

    goto :goto_3

    :cond_3
    move p3, v1

    .line 833
    :goto_3
    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v6

    .line 834
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    .line 835
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    aput v6, v0, v4

    .line 836
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v8, 0x1

    aput v6, v0, v8

    .line 837
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v9, 0x2

    aput v6, v0, v9

    .line 838
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->c:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v7, 0x3

    aput v6, v0, v7

    aget v6, v0, v7

    if-ne v6, v5, :cond_4

    return v1

    :cond_4
    if-nez p4, :cond_6

    aget v6, v0, v4

    if-nez v6, :cond_5

    aget v6, v0, v8

    if-nez v6, :cond_5

    aget v6, v0, v9

    if-nez v6, :cond_5

    aget v6, v0, v7

    if-eq v6, v3, :cond_6

    .line 841
    :cond_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return v4
.end method

.method private getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I
    .locals 16

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 728
    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v0

    .line 729
    invoke-direct/range {v6 .. v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 730
    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v2

    .line 731
    invoke-direct/range {v8 .. v13}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    move-result v3

    add-int/lit8 v6, v1, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 734
    invoke-direct/range {v4 .. v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 735
    invoke-direct/range {v10 .. v15}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplitPoint(Lcom/badlogic/gdx/graphics/Pixmap;IIZZ)I

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 743
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    sub-int/2addr v1, v5

    sub-int/2addr v6, v1

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    add-int/lit8 v6, v1, -0x2

    :goto_0
    if-eqz v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    sub-int/2addr v3, v5

    sub-int/2addr v1, v3

    goto :goto_1

    .line 753
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v7, 0x0

    aput v0, v3, v7

    aput v6, v3, v5

    aput v2, v3, v4

    const/4 v0, 0x3

    aput v1, v3, v0

    return-object v3
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 330
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v2, :cond_0

    .line 331
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized generateTextureAtlas(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>()V

    .line 341
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDuplicateBorder()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return v0
.end method

.method public getPackToTexture()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return v0
.end method

.method public declared-synchronized getPage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 3

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 309
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 310
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 312
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getPageFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return v0
.end method

.method public declared-synchronized getPageIndex(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 319
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 321
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 323
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getPageWidth()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return v0
.end method

.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public declared-synchronized getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 299
    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 302
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getTransparentColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public declared-synchronized pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pack(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->disposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v4

    :cond_0
    if-eqz v0, :cond_2

    .line 168
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getRect(Ljava/lang/String;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pixmap has already been packed with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    const-string v2, ".9"

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v12, v10, v10, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    .line 175
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-direct {v13, v2, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 176
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 177
    invoke-direct {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getSplits(Lcom/badlogic/gdx/graphics/Pixmap;)[I

    move-result-object v2

    iput-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    .line 178
    iget-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    invoke-direct {v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPads(Lcom/badlogic/gdx/graphics/Pixmap;[I)[I

    move-result-object v2

    iput-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    move-object v2, v13

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    const-string v2, "\\."

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    move-object v2, v12

    move-object v3, v13

    move-object v4, v3

    goto/16 :goto_10

    .line 183
    :cond_3
    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v2, :cond_4

    goto :goto_1

    .line 242
    :cond_4
    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-direct {v12, v10, v10, v2, v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIII)V

    move-object v2, v12

    goto/16 :goto_10

    .line 184
    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v20

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v21

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    .line 189
    iget-boolean v4, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceY:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 191
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_8

    const/4 v6, 0x0

    .line 192
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 193
    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 195
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 200
    :cond_8
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    :goto_5
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v5, :cond_b

    const/4 v6, 0x0

    .line 201
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 202
    invoke-virtual {v3, v6, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 204
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_b
    :goto_7
    move/from16 v19, v5

    goto :goto_8

    :cond_c
    const/16 v19, 0x0

    .line 210
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    .line 211
    iget-boolean v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->stripWhitespaceX:Z

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    .line 213
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    if-ge v10, v6, :cond_f

    move/from16 v6, v19

    :goto_a
    if-ge v6, v2, :cond_e

    .line 215
    invoke-virtual {v3, v10, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 217
    iget v8, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v7, v8, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 222
    :cond_f
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    :goto_c
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_12

    move/from16 v7, v19

    :goto_d
    if-ge v7, v2, :cond_11

    .line 224
    invoke-virtual {v3, v6, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 226
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->alphaThreshold:I

    if-le v8, v9, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_12
    :goto_e
    move/from16 v18, v5

    goto :goto_f

    :cond_13
    const/16 v18, 0x0

    :goto_f
    sub-int v10, v4, v18

    sub-int v12, v2, v19

    .line 235
    new-instance v15, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v15, v10, v12, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 236
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v10

    move v9, v12

    .line 237
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 240
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object v13, v2

    move-object v4, v15

    move v15, v3

    move/from16 v16, v10

    move/from16 v17, v12

    invoke-direct/range {v13 .. v21}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;-><init>(IIIIIIII)V

    move-object v3, v4

    .line 246
    :goto_10
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getWidth()F

    move-result v5

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_19

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->getHeight()F

    move-result v5

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    goto/16 :goto_12

    .line 251
    :cond_14
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v5, v1, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    move-result-object v5

    if-eqz v0, :cond_15

    .line 253
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v6, v0, v2}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v6, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 257
    :cond_15
    iget v0, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v0, v0

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v6, v6

    iget v7, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v7, v7

    iget v8, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v8, v8

    .line 259
    iget-boolean v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    if-eqz v9, :cond_16

    iget-boolean v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-nez v9, :cond_16

    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v9, :cond_16

    iget-boolean v9, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    if-nez v9, :cond_16

    .line 260
    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture;->bind()V

    .line 261
    sget-object v12, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v13, v9, Lcom/badlogic/gdx/graphics/Texture;->glTarget:I

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v19

    .line 262
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v20

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v21

    move v15, v0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    .line 261
    invoke-interface/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_11

    .line 264
    :cond_16
    iput-boolean v11, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->dirty:Z

    .line 266
    :goto_11
    iget-object v9, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v9, v3, v0, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 268
    iget-boolean v9, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    if-eqz v9, :cond_17

    .line 269
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    .line 271
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    add-int/lit8 v11, v0, -0x1

    add-int/lit8 v22, v6, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v18, v11

    move/from16 v19, v22

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 272
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    add-int/lit8 v23, v9, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    add-int v24, v0, v7

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v14, v23

    move/from16 v18, v24

    move/from16 v19, v22

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 273
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v14, 0x0

    add-int/lit8 v25, v10, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    add-int v26, v6, v8

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v15, v25

    move/from16 v18, v11

    move/from16 v19, v26

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 274
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v14, v23

    move/from16 v15, v25

    move/from16 v18, v24

    move/from16 v19, v26

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 276
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v16, v9

    move/from16 v18, v0

    move/from16 v19, v22

    move/from16 v20, v7

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 277
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/16 v21, 0x1

    move-object v13, v3

    move/from16 v15, v25

    move/from16 v16, v9

    move/from16 v18, v0

    move/from16 v19, v26

    move/from16 v20, v7

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 278
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    move-object v13, v3

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v6

    move/from16 v21, v8

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 279
    iget-object v12, v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v20, 0x1

    move-object v13, v3

    move/from16 v14, v23

    move/from16 v17, v10

    move/from16 v18, v24

    move/from16 v19, v6

    move/from16 v21, v8

    invoke-virtual/range {v12 .. v21}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    :cond_17
    if-eqz v4, :cond_18

    .line 283
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :cond_18
    monitor-exit p0

    return-object v2

    :cond_19
    :goto_12
    if-nez v0, :cond_1a

    .line 247
    :try_start_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Page size too small for pixmap."

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1a
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page size too small for pixmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13
.end method

.method public setDuplicateBorder(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->duplicateBorder:Z

    return-void
.end method

.method public setPackToTexture(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packToTexture:Z

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 442
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->padding:I

    return-void
.end method

.method public setPageFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-void
.end method

.method public setPageHeight(I)V
    .locals 0

    .line 426
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageHeight:I

    return-void
.end method

.method public setPageWidth(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageWidth:I

    return-void
.end method

.method public setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->transparentColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->packStrategy:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;->sort(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public declared-synchronized updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 2

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 410
    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->updateTexture(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 6

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 351
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTextureAtlas(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;ZZ)V
    .locals 9

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 361
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 362
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez p4, :cond_0

    .line 363
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    iget-object v1, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;

    .line 365
    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object v3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->x:F

    float-to-int v4, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->y:F

    float-to-int v5, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->width:F

    float-to-int v6, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    float-to-int v7, v2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 367
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "split"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "pad"

    aput-object v5, v2, v3

    .line 368
    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->names:[Ljava/lang/String;

    new-array v2, v4, [[I

    .line 369
    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->splits:[I

    aput-object v5, v2, v6

    iget-object v5, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->pads:[I

    aput-object v5, v2, v3

    iput-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->values:[[I

    :cond_1
    const/4 v2, -0x1

    if-eqz p5, :cond_2

    .line 376
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->indexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 377
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 383
    :cond_2
    iput-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 384
    iput v2, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    .line 385
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetX:I

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetX:F

    .line 386
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    int-to-float v0, v0

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->height:F

    sub-float/2addr v0, v2

    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->offsetY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->offsetY:F

    .line 387
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalWidth:I

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    .line 388
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PixmapPackerRectangle;->originalHeight:I

    iput v0, v8, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    .line 390
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 392
    :cond_3
    iget-object p4, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->addedRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 393
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p4

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 396
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 402
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updatePageTextures(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    .line 403
    :goto_0
    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, p3, :cond_0

    .line 404
    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    iget p4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    iget-object p3, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 405
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
