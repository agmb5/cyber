.class public interface abstract Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/model/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
.end method

.method public abstract allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
.end method

.method public abstract ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
.end method

.method public abstract ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
.end method

.method public abstract flippersActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract gameEnded(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
.end method

.method public abstract gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
.end method

.method public abstract isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
.end method

.method public abstract processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
.end method

.method public abstract tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
.end method
