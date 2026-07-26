.class public final enum Landroidx/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/lifecycle/Lifecycle$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_START:Landroidx/lifecycle/Lifecycle$Event;

.field public static final enum ON_STOP:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 133
    new-instance v0, Landroidx/lifecycle/Lifecycle$Event;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 137
    new-instance v1, Landroidx/lifecycle/Lifecycle$Event;

    const-string v2, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 141
    new-instance v2, Landroidx/lifecycle/Lifecycle$Event;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 145
    new-instance v3, Landroidx/lifecycle/Lifecycle$Event;

    const-string v4, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 149
    new-instance v4, Landroidx/lifecycle/Lifecycle$Event;

    const-string v5, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 153
    new-instance v5, Landroidx/lifecycle/Lifecycle$Event;

    const-string v6, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 157
    new-instance v6, Landroidx/lifecycle/Lifecycle$Event;

    const-string v7, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 128
    filled-new-array/range {v0 .. v6}, [Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    .line 169
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 175
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 173
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 171
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0
.end method

.method public static upFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    .line 213
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 219
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 217
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0
.end method

.method public static upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    .line 235
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 241
    :cond_13
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 239
    :cond_16
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 237
    :cond_19
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$Event;
    .registers 2

    .line 128
    const-class v0, Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle$Event;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$Event;
    .registers 1

    .line 128
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->$VALUES:[Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$Event;

    return-object v0
.end method


# virtual methods
.method public getTargetState()Landroidx/lifecycle/Lifecycle$State;
    .registers 4

    .line 258
    sget-object v0, Landroidx/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_22
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 266
    :pswitch_25
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 264
    :pswitch_28
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    .line 261
    :pswitch_2b
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method
