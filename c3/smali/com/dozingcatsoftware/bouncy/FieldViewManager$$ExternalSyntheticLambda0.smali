.class public final synthetic Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/bouncy/FieldViewManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    iput-wide p2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    iget-wide v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->lambda$updateFlippersFromTouchEvent$0$com-dozingcatsoftware-bouncy-FieldViewManager(J)V

    return-void
.end method
