.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->lambda$startMultiball$1$com-dozingcatsoftware-vectorpinball-fields-Field5Delegate(Ljava/lang/Runnable;)V

    return-void
.end method
