.class public final synthetic Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;

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

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->$r8$lambda$_mwSEseLusWbi1o-ofw-CZEPxPE(Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;)I

    move-result p1

    return p1
.end method
