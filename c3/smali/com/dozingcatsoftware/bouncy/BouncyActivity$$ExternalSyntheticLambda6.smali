.class public final synthetic Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;->INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->loadSounds()V

    return-void
.end method
