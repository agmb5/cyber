.class public final synthetic Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda5;->f$0:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->draw()V

    return-void
.end method
