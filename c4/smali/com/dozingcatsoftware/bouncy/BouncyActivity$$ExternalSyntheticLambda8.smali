.class public final synthetic Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lj$/util/function/LongSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsLong()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
