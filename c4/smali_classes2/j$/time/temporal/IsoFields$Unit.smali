.class final enum Lj$/time/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalUnit;


# static fields
.field private static final synthetic $VALUES:[Lj$/time/temporal/IsoFields$Unit;

.field public static final enum QUARTER_YEARS:Lj$/time/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Lj$/time/temporal/IsoFields$Unit;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lj$/time/temporal/IsoFields$Unit;

    sget-object v1, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    const-string v1, "WEEK_BASED_YEARS"

    const/4 v2, 0x0

    const-string v3, "WeekBasedYears"

    invoke-direct {v0, v1, v2, v3}, Lj$/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lj$/time/temporal/IsoFields$Unit;

    new-instance v1, Lj$/time/temporal/IsoFields$Unit;

    const-string v3, "QUARTER_YEARS"

    const/4 v4, 0x1

    const-string v5, "QuarterYears"

    invoke-direct {v1, v3, v4, v5}, Lj$/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Lj$/time/temporal/IsoFields$Unit;

    const/4 v3, 0x2

    new-array v3, v3, [Lj$/time/temporal/IsoFields$Unit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj$/time/temporal/IsoFields$Unit;->$VALUES:[Lj$/time/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/IsoFields$Unit;
    .locals 1

    const-class v0, Lj$/time/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/IsoFields$Unit;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/IsoFields$Unit;
    .locals 1

    sget-object v0, Lj$/time/temporal/IsoFields$Unit;->$VALUES:[Lj$/time/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Lj$/time/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
