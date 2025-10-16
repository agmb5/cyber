.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;

.field public final synthetic f$1:Lcom/badlogic/gdx/physics/box2d/Body;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lcom/dozingcatsoftware/vectorpinball/model/Field;

.field public final synthetic f$4:Lcom/dozingcatsoftware/vectorpinball/model/Ball;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;Lcom/badlogic/gdx/physics/box2d/Body;FLcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$1:Lcom/badlogic/gdx/physics/box2d/Body;

    iput p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$3:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    iput-object p5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$4:Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$1:Lcom/badlogic/gdx/physics/box2d/Body;

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$2:F

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$3:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;->f$4:Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field7Delegate(Lcom/badlogic/gdx/physics/box2d/Body;FLcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    return-void
.end method
