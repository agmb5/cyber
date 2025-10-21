.class public Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final TAU:D = 6.283185307179586


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDouble(Ljava/lang/Object;D)D
    .locals 1

    .line 37
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 38
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    return-wide p1
.end method

.method public static asFloat(Ljava/lang/Object;)F
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result p0

    return p0
.end method

.method public static asFloat(Ljava/lang/Object;F)F
    .locals 1

    .line 11
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 14
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return p1
.end method

.method public static asFloatList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static asInt(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static asInt(Ljava/lang/Object;I)I
    .locals 1

    .line 50
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 51
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return p1
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static toRadiansF(F)F
    .locals 2

    float-to-double v0, p0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
