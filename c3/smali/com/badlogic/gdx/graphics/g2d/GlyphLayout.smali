.class public Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
.super Ljava/lang/Object;
.source "GlyphLayout.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    }
.end annotation


# static fields
.field private static final colorPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final colorStack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static final epsilon:F = 1.0E-4f

.field private static final glyphRunPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:F

.field public final runs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    .line 47
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    .line 48
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 71
    invoke-virtual/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 65
    invoke-virtual/range {p0 .. p6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    return-void
.end method

.method private adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V
    .locals 2

    .line 416
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 417
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v1, :cond_0

    return-void

    .line 418
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v0, p1

    .line 419
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget-object p2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget p2, p2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 p2, p2, -0x1

    aput v0, p1, p2

    return-void
.end method

.method private parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, p3, :cond_0

    return v0

    .line 424
    :cond_0
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/16 v4, 0x5d

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_6

    if-eq v1, v4, :cond_4

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, p3, :cond_3

    .line 461
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_1
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Colors;->get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 465
    :cond_2
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/Color;

    .line 466
    sget-object p4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    sub-int/2addr v1, p2

    return v1

    :cond_3
    return v0

    .line 455
    :cond_4
    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_5
    return v3

    :cond_6
    const/4 p1, -0x2

    return p1

    :cond_7
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p3, :cond_e

    .line 429
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_b

    add-int/lit8 p1, p2, 0x2

    if-lt v1, p1, :cond_e

    add-int/lit8 p1, p2, 0x9

    if-le v1, p1, :cond_8

    goto :goto_5

    :cond_8
    sub-int/2addr v1, p2

    const/4 p1, 0x7

    if-gt v1, p1, :cond_a

    rsub-int/lit8 p1, v1, 0x9

    :goto_2
    if-ge v3, p1, :cond_9

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    or-int/lit16 v2, v2, 0xff

    .line 437
    :cond_a
    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    .line 438
    sget-object p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 439
    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    return v1

    :cond_b
    const/16 v6, 0x30

    if-lt v5, v6, :cond_c

    const/16 v6, 0x39

    if-gt v5, v6, :cond_c

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v5, -0x30

    :goto_3
    add-int/2addr v2, v5

    goto :goto_4

    :cond_c
    const/16 v6, 0x61

    if-lt v5, v6, :cond_d

    const/16 v6, 0x66

    if-gt v5, v6, :cond_d

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v5, -0x57

    goto :goto_3

    :cond_d
    const/16 v6, 0x41

    if-lt v5, v6, :cond_e

    const/16 v6, 0x46

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v5, v5, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    :goto_5
    return v0
.end method

.method private truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            "F",
            "Ljava/lang/String;",
            "I",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;",
            ">;)V"
        }
    .end annotation

    .line 323
    invoke-virtual {p6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 324
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p5

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 326
    iget-object p4, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget p4, p4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p4, :cond_0

    .line 327
    invoke-direct {p0, p1, p5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 328
    iget-object p4, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p4, p4, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 329
    iget-object v2, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 330
    aget v4, p4, v3

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-float/2addr p3, v1

    const/4 p4, 0x0

    .line 336
    iget v1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 337
    iget-object v2, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 338
    :goto_1
    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge p4, v3, :cond_2

    .line 339
    aget v3, v2, p4

    add-float/2addr v1, v3

    cmpl-float v3, v1, p3

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-le p4, v0, :cond_3

    .line 347
    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 348
    iget-object p3, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 350
    iget-object p1, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lez p1, :cond_4

    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p3, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p4, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget p4, p4, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p3, v0, p4}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    goto :goto_3

    .line 353
    :cond_3
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 354
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 355
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object p3, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 357
    :cond_4
    :goto_3
    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object p2, p5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 359
    invoke-virtual {p6, p5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method private wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;
    .locals 6

    .line 365
    iget-object p4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 366
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 367
    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    move v2, p3

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 372
    invoke-virtual {p4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p3, v0, :cond_3

    .line 377
    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v3, 0x0

    if-ge p3, v0, :cond_4

    .line 383
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 384
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 386
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    .line 387
    invoke-virtual {v0, p4, v4, v2}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    add-int/lit8 v5, p3, -0x1

    .line 388
    invoke-virtual {p4, v4, v5}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 389
    iput-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 390
    iput-object p4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    .line 392
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v5, v2, 0x1

    .line 393
    invoke-virtual {v0, v1, v4, v5}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;II)V

    const/4 v5, 0x1

    .line 394
    invoke-virtual {v1, v5, p3}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 395
    iget-object p3, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget p4, p4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int p4, p4

    int-to-float p4, p4

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float p4, p4, v5

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr p4, v5

    aput p4, p3, v4

    .line 396
    iput-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    .line 397
    iput-object v1, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    goto :goto_3

    .line 400
    :cond_4
    invoke-virtual {p4, v2}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    add-int/lit8 p3, v2, 0x1

    .line 401
    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    :goto_3
    if-nez v2, :cond_5

    .line 406
    sget-object p1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 407
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    goto :goto_4

    .line 409
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    :goto_4
    return-object v3
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 474
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 478
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V
    .locals 10

    .line 77
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    move/from16 v8, p4

    .line 97
    iget-object v9, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    .line 98
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 99
    invoke-virtual {v9}, Lcom/badlogic/gdx/utils/Array;->clear()V

    move-object/from16 v0, p1

    .line 101
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    const/4 v11, 0x0

    move/from16 v0, p3

    if-ne v0, v8, :cond_0

    .line 103
    iput v11, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    .line 104
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    iput v0, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    return-void

    :cond_0
    if-eqz p9, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpg-float v1, p6, v1

    if-gtz v1, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    move/from16 v14, p8

    .line 114
    :goto_0
    iget-boolean v15, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->markupEnabled:Z

    if-eqz v15, :cond_4

    .line 116
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 117
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_3
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    move-object/from16 v2, p5

    .line 119
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object/from16 v2, p5

    .line 122
    :goto_2
    iget v5, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    const/16 v16, 0x0

    move v4, v0

    move-object v1, v2

    move-object/from16 v3, v16

    const/16 v17, 0x0

    :goto_3
    if-ne v0, v8, :cond_6

    if-ne v4, v8, :cond_5

    goto/16 :goto_a

    :cond_5
    move v12, v0

    move-object/from16 v20, v1

    move v13, v8

    :goto_4
    const/4 v0, -0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v12, v0, 0x1

    .line 134
    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v13, 0xa

    if-eq v0, v13, :cond_a

    const/16 v13, 0x5b

    if-eq v0, v13, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v15, :cond_9

    .line 143
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-direct {v7, v6, v12, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->parseColorMarkup(Ljava/lang/CharSequence;IILcom/badlogic/gdx/utils/Pool;)I

    move-result v0

    if-ltz v0, :cond_8

    add-int/lit8 v1, v12, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v12, v0

    .line 147
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->colorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v20, v0

    move v13, v1

    goto :goto_4

    :cond_8
    const/4 v13, -0x2

    if-ne v0, v13, :cond_9

    add-int/lit8 v0, v12, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    move-object/from16 v20, v1

    const/4 v0, -0x1

    const/4 v13, -0x1

    :goto_6
    const/16 v21, 0x0

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v12, -0x1

    move v13, v0

    move-object/from16 v20, v1

    const/4 v0, -0x1

    const/16 v21, 0x1

    :goto_7
    if-eq v13, v0, :cond_2e

    if-eq v13, v4, :cond_2a

    .line 161
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-object/from16 p3, v1

    .line 162
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v0

    move-object v0, v10

    move-object/from16 v6, p3

    move-object v1, v2

    move/from16 p3, v12

    move-object v12, v2

    move-object/from16 v2, p2

    move-object/from16 p5, v3

    move v3, v4

    move/from16 v22, v4

    move v4, v13

    move/from16 v23, v5

    move-object/from16 v5, p5

    .line 163
    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyphs(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 164
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_b

    .line 165
    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    move-object/from16 v3, p5

    goto/16 :goto_19

    :cond_b
    move-object/from16 v3, p5

    if-eqz v3, :cond_d

    .line 169
    iget-boolean v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    if-eqz v0, :cond_c

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v0, v0

    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v0, v0, v1

    goto :goto_8

    :cond_c
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v0, v0, v1

    iget v1, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v0, v1

    :goto_8
    sub-float v17, v17, v0

    :cond_d
    move/from16 v0, v17

    .line 172
    iget-object v1, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 173
    iput v0, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 174
    iput v11, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    if-nez v21, :cond_e

    if-ne v13, v8, :cond_f

    .line 175
    :cond_e
    invoke-direct {v7, v10, v12}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    .line 176
    :cond_f
    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 178
    iget-object v1, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 179
    iget-object v2, v12, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    if-eqz v14, :cond_29

    if-nez v1, :cond_10

    goto/16 :goto_1a

    :cond_10
    const/4 v4, 0x0

    .line 189
    aget v5, v2, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    add-float/2addr v5, v6

    add-float/2addr v0, v5

    move/from16 v17, v0

    move-object v0, v2

    move-object v2, v12

    const/4 v5, 0x2

    :goto_9
    if-ge v5, v1, :cond_28

    .line 191
    iget-object v6, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 192
    iget v4, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v6, v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v4, v4, v6

    iget v6, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v4, v6

    add-float v4, v17, v4

    const v6, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v4, v6

    cmpg-float v4, v4, p6

    if-gtz v4, :cond_11

    .line 195
    aget v4, v0, v5

    add-float v17, v17, v4

    move/from16 v18, v17

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    move/from16 v17, v11

    move v11, v5

    const/4 v5, 0x0

    goto/16 :goto_18

    :cond_11
    if-eqz p9, :cond_1b

    .line 201
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->glyphRunPool:Lcom/badlogic/gdx/utils/Pool;

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p6

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->truncate(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;FLjava/lang/String;ILcom/badlogic/gdx/utils/Pool;)V

    .line 271
    :goto_a
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    .line 275
    iget-object v0, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 276
    iget v1, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_13

    .line 278
    aget-object v4, v0, v3

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 279
    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v6, 0x0

    .line 280
    aget v8, v5, v6

    .line 281
    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 282
    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    move v11, v8

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v9, :cond_12

    .line 283
    aget-object v13, v6, v12

    check-cast v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 284
    iget v14, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v13, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v14, v13

    int-to-float v13, v14

    iget v14, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v13, v13, v14

    iget v14, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padRight:F

    sub-float/2addr v13, v14

    add-float/2addr v13, v11

    .line 285
    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v12, v12, 0x1

    .line 287
    aget v13, v5, v12

    add-float/2addr v11, v13

    goto :goto_c

    .line 289
    :cond_12
    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    .line 290
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 292
    :cond_13
    iput v2, v7, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    and-int/lit8 v2, p7, 0x8

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_14

    const/4 v13, 0x1

    goto :goto_d

    :cond_14
    const/4 v13, 0x0

    :goto_d
    const/high16 v2, -0x31000000

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_e
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v12, v1, :cond_18

    .line 300
    aget-object v4, v0, v12

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 301
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_17

    .line 302
    iget v2, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    sub-float v5, p6, v11

    if-eqz v13, :cond_15

    div-float/2addr v5, v3

    :cond_15
    :goto_f
    move/from16 v3, v19

    if-ge v3, v12, :cond_16

    add-int/lit8 v19, v3, 0x1

    .line 306
    aget-object v3, v0, v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v6, v5

    iput v6, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    goto :goto_f

    .line 307
    :cond_16
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v5, v4

    move/from16 v19, v3

    move v11, v5

    goto :goto_10

    .line 309
    :cond_17
    iget v3, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->width:F

    add-float/2addr v3, v4

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v11, v3

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_18
    sub-float v2, p6, v11

    if-eqz v13, :cond_19

    div-float/2addr v2, v3

    :cond_19
    :goto_11
    move/from16 v3, v19

    if-ge v3, v1, :cond_1a

    add-int/lit8 v19, v3, 0x1

    .line 314
    aget-object v3, v0, v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    add-float/2addr v4, v2

    iput v4, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    goto :goto_11

    :cond_1a
    return-void

    :cond_1b
    add-float v11, v11, v23

    .line 208
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v10, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getWrapIndex(Lcom/badlogic/gdx/utils/Array;I)I

    move-result v1

    if-nez v1, :cond_1c

    .line 209
    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    :cond_1c
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt v1, v3, :cond_1d

    goto :goto_12

    :cond_1d
    move v12, v1

    :cond_1e
    :goto_12
    if-nez v12, :cond_25

    .line 218
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_13
    if-ge v12, v1, :cond_20

    .line 219
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v3, v3

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_14

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_20
    :goto_14
    if-lez v12, :cond_21

    .line 221
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v3, v12, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    .line 222
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v12}, Lcom/badlogic/gdx/utils/FloatArray;->removeRange(II)V

    .line 224
    :cond_21
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    mul-float v1, v1, v3

    iget v3, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->padLeft:F

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 226
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 228
    iget v0, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    .line 229
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, v1

    :goto_15
    if-lez v3, :cond_23

    .line 231
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    int-to-char v1, v1

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_16

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 232
    :cond_23
    :goto_16
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->glyphs:Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 233
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/FloatArray;->truncate(I)V

    .line 234
    invoke-direct {v7, v10, v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->adjustLastGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;)V

    goto :goto_17

    :cond_24
    const/4 v4, 0x2

    goto :goto_17

    :cond_25
    const/4 v4, 0x2

    .line 237
    invoke-direct {v7, v10, v2, v12, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->wrap(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;II)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    move-result-object v0

    if-nez v0, :cond_26

    move-object/from16 v3, v16

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    goto :goto_1c

    .line 242
    :cond_26
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v2, v0

    .line 246
    :goto_17
    iget-object v0, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 247
    iget-object v1, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->xAdvances:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v5, 0x0

    .line 248
    aget v3, v1, v5

    const/4 v6, 0x1

    if-le v0, v6, :cond_27

    .line 249
    aget v12, v1, v6

    add-float/2addr v3, v12

    :cond_27
    const/4 v12, 0x0

    .line 250
    iput v12, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->x:F

    .line 251
    iput v11, v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->y:F

    move/from16 v18, v3

    move/from16 v17, v11

    move-object/from16 v3, v16

    const/4 v11, 0x1

    move-object/from16 v24, v1

    move v1, v0

    move-object/from16 v0, v24

    :goto_18
    add-int/2addr v11, v6

    move v5, v11

    move/from16 v11, v17

    move/from16 v17, v18

    goto/16 :goto_9

    :cond_28
    :goto_19
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto :goto_1c

    :cond_29
    :goto_1a
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    move/from16 v17, v0

    if-eqz v15, :cond_2b

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v1, :cond_2b

    .line 183
    aget v0, v2, v4

    add-float v17, v17, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2a
    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 p3, v12

    goto :goto_19

    :cond_2b
    :goto_1c
    if-eqz v21, :cond_2d

    move/from16 v0, v22

    if-ne v13, v0, :cond_2c

    .line 261
    iget v0, v10, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->blankLineScale:F

    mul-float v0, v0, v23

    add-float/2addr v11, v0

    goto :goto_1d

    :cond_2c
    add-float v11, v11, v23

    :goto_1d
    move-object/from16 v3, v16

    const/4 v4, 0x0

    goto :goto_1e

    :cond_2d
    move/from16 v4, v17

    :goto_1e
    move/from16 v17, v4

    move-object/from16 v2, v20

    move/from16 v4, p3

    goto :goto_1f

    :cond_2e
    move v0, v4

    move/from16 v23, v5

    move/from16 p3, v12

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x0

    :goto_1f
    move-object/from16 v6, p2

    move/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v5, v23

    goto/16 :goto_3
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V
    .locals 10

    .line 83
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;IILcom/badlogic/gdx/graphics/Color;FIZLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 488
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v2, v3, :cond_1

    .line 489
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->runs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout$GlyphRun;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
