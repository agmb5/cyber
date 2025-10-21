.class public Lcom/dozingcatsoftware/vectorpinball/model/Color;
.super Ljava/lang/Object;
.source "Color.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blend(IID)I
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gtz v2, :cond_0

    return p0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_1

    return p1

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getRed(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getRed(I)I

    move-result v2

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getRed(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 67
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getGreen(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getGreen(I)I

    move-result v3

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getGreen(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 68
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getBlue(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getBlue(I)I

    move-result v4

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getBlue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 69
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getAlpha(I)I

    move-result v3

    int-to-double v3, v3

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getAlpha(I)I

    move-result p1

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getAlpha(I)I

    move-result p0

    sub-int/2addr p1, p0

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, p0

    double-to-int p0, v3

    .line 65
    invoke-static {v0, v1, v2, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGBA(IIII)I

    move-result p0

    return p0
.end method

.method public static fromList(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)I"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 22
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result p0

    return p0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 26
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 25
    invoke-static {v0, v2, v1, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGBA(IIII)I

    move-result p0

    return p0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid color size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromRGB(III)I
    .locals 1

    const/16 v0, 0xff

    .line 13
    invoke-static {p0, p1, p2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGBA(IIII)I

    move-result p0

    return p0
.end method

.method public static fromRGBA(IIII)I
    .locals 0

    shl-int/lit8 p3, p3, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static getAlpha(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getBlue(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getGreen(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getRed(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static inverse(I)I
    .locals 1

    xor-int/lit8 v0, p0, -0x1

    .line 51
    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->getAlpha(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result p0

    return p0
.end method

.method public static toAGBR(I)I
    .locals 3

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    const v2, -0xff0100

    and-int/2addr p0, v2

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    return p0
.end method

.method public static toARGB(I)I
    .locals 0

    return p0
.end method

.method public static toRGBA(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static withAlpha(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
