.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->createDelegateFromLayoutClass(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Lj$/util/function/Function;)Lj$/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Lj$/util/function/Function;Lj$/util/function/Function;)Lj$/util/function/Function;

    move-result-object p1

    return-object p1
.end method
