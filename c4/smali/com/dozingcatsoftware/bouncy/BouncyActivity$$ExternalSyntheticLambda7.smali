.class public final synthetic Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/dozingcatsoftware/bouncy/BouncyActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda7;->f$0:Lcom/dozingcatsoftware/bouncy/BouncyActivity;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda7;->f$0:Lcom/dozingcatsoftware/bouncy/BouncyActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->lambda$onCreate$1$com-dozingcatsoftware-bouncy-BouncyActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
