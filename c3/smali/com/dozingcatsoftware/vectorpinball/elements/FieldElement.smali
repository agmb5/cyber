.class public abstract Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.super Ljava/lang/Object;
.source "FieldElement.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;


# static fields
.field public static final CLASS_PROPERTY:Ljava/lang/String; = "class"

.field public static final COLOR_PROPERTY:Ljava/lang/String; = "color"

.field static final DEFAULT_WALL_COLOR:I

.field public static final ID_PROPERTY:Ljava/lang/String; = "id"

.field public static final INACTIVE_LAYER_COLOR_PROPERTY:Ljava/lang/String; = "inactiveLayerColor"

.field public static final LAYER_PROPERTY:Ljava/lang/String; = "layer"

.field public static final SCORE_PROPERTY:Ljava/lang/String; = "score"


# instance fields
.field box2dWorld:Lcom/badlogic/gdx/physics/box2d/World;

.field elementID:Ljava/lang/String;

.field flashCounter:J

.field inactiveLayerColor:Ljava/lang/Integer;

.field initialColor:Ljava/lang/Integer;

.field layer:I

.field layerColorFraction:D

.field newColor:Ljava/lang/Integer;

.field parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field score:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    const/16 v1, 0xa0

    .line 43
    invoke-static {v0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->DEFAULT_WALL_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layer:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flashCounter:J

    .line 40
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->score:J

    return-void
.end method

.method public static createFromParameters(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            "Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;",
            ")",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;"
        }
    .end annotation

    const-string v0, "class"

    .line 54
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.dozingcatsoftware.vectorpinball.elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "layer"

    .line 77
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 79
    :cond_1
    invoke-virtual {p2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->existingOrNewWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->initialize(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 66
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "class not specified for element: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected colorApplyingLayerOrFlash(ILjava/lang/Integer;)I
    .locals 5

    if-eqz p2, :cond_0

    .line 254
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 255
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    invoke-static {p2, p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->blend(IID)I

    move-result p1

    return p1

    .line 257
    :cond_0
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flashCounter:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->inverse(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public abstract createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
.end method

.method protected currentColor(I)I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->newColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->initialColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 250
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->inactiveLayerColor:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->colorApplyingLayerOrFlash(ILjava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public abstract draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
.end method

.method public abstract finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
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
.end method

.method public flashForNanos(J)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flashCounter:J

    return-void
.end method

.method public flippersActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getBodies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end method

.method public getBooleanParameterValueForKey(Ljava/lang/String;)Z
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getElementId()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->elementID:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatArrayParameterValueForKey(Ljava/lang/String;)[F
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFloatParameterValueForKey(Ljava/lang/String;)F
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getIntParameterValueForKey(Ljava/lang/String;)I
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getLayer()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layer:I

    return v0
.end method

.method public getRawParameterValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getScore()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->score:J

    return-wide v0
.end method

.method public handleCollision(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    return-void
.end method

.method public initialize(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ")V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->parameters:Ljava/util/Map;

    .line 91
    iput-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->box2dWorld:Lcom/badlogic/gdx/physics/box2d/World;

    const-string v0, "id"

    .line 92
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->elementID:Ljava/lang/String;

    const-string v0, "color"

    .line 94
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->initialColor:Ljava/lang/Integer;

    :cond_1
    const-string v0, "inactiveLayerColor"

    .line 97
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->inactiveLayerColor:Ljava/lang/Integer;

    :cond_2
    const-string v0, "score"

    .line 102
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->score:J

    :cond_3
    const-string v0, "layer"

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layer:I

    .line 109
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V

    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->newColor:Ljava/lang/Integer;

    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->inactiveLayerColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 5

    .line 128
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flashCounter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, p2

    .line 129
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flashCounter:J

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->inactiveLayerColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    long-to-double p2, p2

    const-wide v0, 0x41adcd6500000000L    # 2.5E8

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    .line 134
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getLayer()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->hasBallAtLayer(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    add-double/2addr v0, p2

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    goto :goto_0

    .line 138
    :cond_1
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    sub-double/2addr v0, p2

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->layerColorFraction:D

    :cond_2
    :goto_0
    return-void
.end method
