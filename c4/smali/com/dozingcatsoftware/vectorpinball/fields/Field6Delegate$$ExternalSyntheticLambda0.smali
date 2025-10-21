.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;

.field public final synthetic f$1:Lcom/dozingcatsoftware/vectorpinball/model/Field;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;->f$1:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;->f$0:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;->f$1:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field6Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method
