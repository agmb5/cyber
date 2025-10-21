.class public Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "SensorElement.java"


# static fields
.field public static final BALL_LAYER_FROM_PROPERTY:Ljava/lang/String; = "ballLayerFrom"

.field public static final BALL_LAYER_TO_PROPERTY:Ljava/lang/String; = "ballLayer"

.field public static final RECORD_BALL_TIMES_PROPERTY:Ljava/lang/String; = "recordBallTimes"

.field public static final RECT_PROPERTY:Ljava/lang/String; = "rect"


# instance fields
.field ballEntryTimestamps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private layerFrom:Ljava/lang/Number;

.field private layerTo:Ljava/lang/Number;

.field recordBallTimes:Z

.field xmax:F

.field xmin:F

.field ymax:F

.field ymin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public ballEntryTimeNanos(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballEntryTimestamps:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method ballInRange(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Z
    .locals 4

    .line 61
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 63
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->xmin:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->xmax:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ymin:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ymax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->layerFrom:Ljava/lang/Number;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getLayer()I

    move-result p1

    if-eq v0, p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method

.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0

    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 0

    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 6
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

    const-string p2, "rect"

    .line 39
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->xmin:F

    const/4 v1, 0x1

    .line 41
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    const/4 v4, 0x3

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ymin:F

    .line 42
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->xmax:F

    .line 43
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ymax:F

    const-string p2, "ballLayerFrom"

    .line 44
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->layerFrom:Ljava/lang/Number;

    const-string p2, "ballLayer"

    .line 45
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->layerTo:Ljava/lang/Number;

    .line 46
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "recordBallTimes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->recordBallTimes:Z

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballEntryTimestamps:Ljava/util/WeakHashMap;

    :cond_0
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

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    .line 75
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 76
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 77
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballInRange(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->layerTo:Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->moveToLayer(I)V

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->recordBallTimes:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballEntryTimestamps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballEntryTimestamps:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameTimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object v1

    invoke-interface {v1, p1, p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 85
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->setMostRecentSensorId(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_2
    iget-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->recordBallTimes:Z

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->ballEntryTimestamps:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
