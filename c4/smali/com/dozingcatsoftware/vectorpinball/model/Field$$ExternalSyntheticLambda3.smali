.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;

    invoke-interface {p1}, Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;->getLayer()I

    move-result p1

    return p1
.end method
