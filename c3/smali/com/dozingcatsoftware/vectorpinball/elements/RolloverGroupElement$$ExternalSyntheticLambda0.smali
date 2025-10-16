.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field public final synthetic f$1:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;->f$1:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;->f$1:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->lambda$tick$0$com-dozingcatsoftware-vectorpinball-elements-RolloverGroupElement(Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;)V

    return-void
.end method
