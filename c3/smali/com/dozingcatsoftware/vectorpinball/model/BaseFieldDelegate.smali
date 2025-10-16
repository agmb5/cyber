.class public Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.super Ljava/lang/Object;
.source "BaseFieldDelegate.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

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

.method public gameEnded(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    return-void
.end method

.method public isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 0

    return-void
.end method
