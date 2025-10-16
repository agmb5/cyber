.class public Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "WallArcElement.java"


# static fields
.field public static final CENTER_PROPERTY:Ljava/lang/String; = "center"

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final MAX_ANGLE_PROPERTY:Ljava/lang/String; = "maxangle"

.field public static final MIN_ANGLE_PROPERTY:Ljava/lang/String; = "minangle"

.field public static final NUM_SEGMENTS_PROPERTY:Ljava/lang/String; = "segments"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"

.field public static final X_RADIUS_PROPERTY:Ljava/lang/String; = "xradius"

.field public static final Y_RADIUS_PROPERTY:Ljava/lang/String; = "yradius"


# instance fields
.field private centerX:F

.field private centerY:F

.field private endAngle:F

.field private radiusX:F

.field private radiusY:F

.field private startAngle:F

.field private wallBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private xEndpoints:[F

.field private yEndpoints:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->wallBodies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 9

    const-string v0, "ignoreBall"

    .line 83
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->getBooleanParameterValueForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->xEndpoints:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 87
    aget v4, v1, v2

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->yEndpoints:[F

    aget v5, v3, v2

    aget v6, v1, v0

    aget v7, v3, v0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->wallBodies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 8

    .line 98
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->DEFAULT_WALL_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->currentColor(I)I

    move-result v7

    .line 101
    invoke-interface {p2}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->canDrawArc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerX:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerY:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusX:F

    iget v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusY:F

    iget v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->startAngle:F

    iget v6, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->endAngle:F

    move-object v0, p2

    invoke-interface/range {v0 .. v7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawArc(FFFFFFI)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->xEndpoints:[F

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->yEndpoints:[F

    invoke-interface {p2, p1, v0, v7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLinePath([F[FI)V

    :goto_0
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            ")V"
        }
    .end annotation

    const-string p2, "center"

    .line 54
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerX:F

    const/4 v1, 0x1

    .line 56
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerY:F

    const-string p2, "radius"

    .line 59
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusY:F

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusX:F

    goto :goto_0

    :cond_0
    const-string p2, "xradius"

    .line 63
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusX:F

    const-string p2, "yradius"

    .line 64
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusY:F

    :goto_0
    const-string p2, "segments"

    .line 67
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    :goto_1
    const-string v1, "minangle"

    .line 69
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->toRadiansF(F)F

    move-result v1

    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->startAngle:F

    const-string v1, "maxangle"

    .line 70
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->toRadiansF(F)F

    move-result p1

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->endAngle:F

    .line 71
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->startAngle:F

    sub-float/2addr p1, v1

    add-int/lit8 v1, p2, 0x1

    .line 73
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->xEndpoints:[F

    .line 74
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->yEndpoints:[F

    :goto_2
    if-gt v0, p2, :cond_2

    .line 76
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->startAngle:F

    int-to-float v2, v0

    mul-float v2, v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 77
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->xEndpoints:[F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerX:F

    iget v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusX:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 78
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->yEndpoints:[F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->centerY:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->radiusY:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getBodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallArcElement;->wallBodies:Ljava/util/List;

    return-object v0
.end method
