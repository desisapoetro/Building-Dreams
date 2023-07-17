// Building Dreams - TypeScript

// Imports
import {DreamBuilder, DreamOptions, DreamState} from 'dream-builder';
import {Thought, Action, Affirmation, Vision} from 'dream-builder';

// Define the Dream Options
const dreamOptions: DreamOptions = {
    goal: 'building dreams',
    lifeState: DreamState.ACTIVE,
    primaryAction: Action.CREATE,
    secondaryAction: Action.IMAGINE,
    innerThought: Thought.PASSION,
    outerThought: Thought.PURPOSE,
    affirmation: Affirmation.INSPIRED,
    vision: Vision.HEALTHY
};

// Create the dream builder
const dreamBuilder = new DreamBuilder(dreamOptions);

// Promises that will be fulfilled when the dream has been built
const dreamBuilt: Promise<void> = dreamBuilder.build();

// Build the dream
dreamBuilt.then(() => {
    console.log('Dream has been built!')
});

// Progress steps to build the dream
let progressSteps: number = 0;
dreamBuilder.onProgress(() => {
    progressSteps += 1;
    console.log(`Progress Step: ${progressSteps}`);
});

// Goals achieved while building the dream
let goalsAchieved: number = 0;
dreamBuilder.onGoalMet(() => {
    goalsAchieved +=1;
    console.log(`Goals Achieved: ${goalsAchieved}`);
});

// Lights in the dark
let lightsInTheDark: number = 0;
dreamBuilder.onLightInDark(() => {
    lightsInTheDark += 1;
    console.log(`Lights in the dark: ${lightsInTheDark}`);
});

// Inspiration
let inspirationPoints: number = 0;
dreamBuilder.onInspired(() => {
    inspirationPoints += 1;
    console.log(`Inspiration Points: ${inspirationPoints}`);
});

// Failures
let failures: number = 0;
dreamBuilder.onFail(() => {
    failures += 1;
    console.log(`Failures: ${failures}`);
});

// Perseverance
let perseverenceCount: number = 0;
dreamBuilder.onPersevere(() => {
    perseverenceCount += 1;
    console.log(`Perseverance Count: ${perseverenceCount}`);
});

// Begin journey
console.log('Dream journey begins...');
dreamBuilder.startJourney();